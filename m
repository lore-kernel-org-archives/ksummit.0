Return-Path: <Tim.Bird@am.sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 46680723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:47:44 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0124.outbound.protection.outlook.com [104.47.32.124])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 404A522C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:47:43 +0000 (UTC)
From: "Bird, Timothy" <Tim.Bird@am.sony.com>
To: Shuah Khan <shuahkh@osg.samsung.com>, Steven Rostedt <rostedt@goodmis.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Wed, 3 Aug 2016 04:47:35 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF053C2732@USCULXMSG02.am.sony.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon>	<20160729102819.2245ae76@gandalf.local.home>
	<579F544B.2010507@osg.samsung.com>
In-Reply-To: <579F544B.2010507@osg.samsung.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> -----Original Message-----
> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Shuah Khan
 On 07/29/2016 08:28 AM, Steven Rostedt wrote:
> > On Fri, 29 Jul 2016 11:59:47 +0300
> > Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> >
> >> Another limitation of kselftest is the lack of standardization for log=
ging and
> >> status reporting. This would be needed to interpret the test output in=
 a
> >> consistent way and generate reports. Regardless of whether we extend
> kselftest
> >> to cover device drivers this would in my opinion be worth fixing.
> >>
> >
> > Perhaps this should be a core topic at KS.
> >
>=20
> Yes definitely. There has been some effort in standardizing,
> but not enough. We can discuss and see what would make the
> kselftest more usable without adding external dependencies.
>=20
> One thing we could do is add script to interpret and turn the
> test output into usable format.

Just FYI on what Fuego [1] does here:

It basically has to take the output from tests with many different output f=
ormats,
and convert each one into a single pass/fail value for each test, for the J=
enkins interface.

It uses a short shell function called log_compare, which it
uses to scan  a log (the test program output) looking for a regular express=
ion.  It is
passed a test_name, match_count, a regular_expression, and a result_categor=
y.
The result category is "p" for positive or "n" for negative.  The regular e=
xpression is
passed to "grep -E <regular_expression> <logfile> | wc -l" and the result i=
s compared
to the match_count.  If it matches, then an additional comparison is made b=
etween
the logfile filtered by the regular_expression and one saved previously.  I=
f the number
of occurrences match, and the current filtered log matches the previously f=
iltered log,
then the test is considered to have succeeded.  The test_name is used to fi=
nd the
previously saved filtered log.

Here is the code, in case the description is not clear:
function log_compare {
# 1 - test_name, 2 - match_count, 3 - regular_expression, 4 - n/p (i.e. neg=
ative or positive)

  cd "$FUEGO_LOGS_PATH/${JOB_NAME}/testlogs"
  LOGFILE=3D"${NODE_NAME}.${BUILD_ID}.${BUILD_NUMBER}.log"
  PARSED_LOGFILE=3D"${NODE_NAME}.${BUILD_ID}.${BUILD_NUMBER}.{4}.log"

  if [ -e $LOGFILE ]; then
    current_count=3D`cat $LOGFILE | grep -E "${3}" 2>&1 | wc -l`
    if [ $current_count -eq $2 ];then
      cat $LOGFILE | grep -E "${3}" | tee "$PARSED_LOGFILE"
      local TMP_P=3D`diff -u ${WORKSPACE}/../ref_logs/${JOB_NAME}/${1}_${4}=
.log "$PARSED_LOGFILE" 2>&1`
      if [ $? -ne 0 ];then
        echo -e "\nFuego error reason: Unexpected test log output:\n$TMP_P\=
n"
        check_create_functional_logrun "test error"
        false
      else
        check_create_functional_logrun "passed"
        true
      fi
    else
      echo -e "\nFuego error reason: Mismatch in expected ($2) and actual (=
$current_count) pos/neg ($4) results. (pattern: $3)\n"
      check_create_functional_logrun "failed"
      false
    fi
  else
    echo -e "\nFuego error reason: 'logs/${JOB_NAME}/testlogs/$LOGFILE' is =
missing.\n"
    check_create_functional_logrun "test error"
    false
  fi

  cd -
}

This is called with a line like the following:
   log_compare $TESTNAME, "11", "^Test-.*OK", "p"=20
or
  log_compare $TESTNAME, "0", "^Test-.*Failed", "n"

The reason for the match_count is that many tests that Fuego runs have
lots of sub-tests, (LTP being a prime example) and you want to figure out
if you're getting the same number of positive or negative results
that you are expecting.  The match_count is sometimes parameterized, so
that you can tune the system to ignore some failures.

The system ships with <test_name>_p.log and <test_name>_n.log files
(previously filtered log files) for each test.

I think in general you want a system that provides default expected results
while still allowing developers to tune it for individual sub-tests that
fail for some reason on their system.  One of the biggest problems with
tests is that users often don't have a baseline of what they should expect
to see (what is "good" output vs. what actually shows a problem).

'grep -E is <regular_expression>' is about the most basic thing you
can do in terms of parsing a log.  Fuego also includes a python-based
parser to extract out benchmarking data, for use in charting and
threshold regression checking, but that seems like overkill for a first pas=
s
at this with kselftest. (IMHO)

FWIW I'm interested in how this shakes out because I want to wrap kselftest=
 into
Fuego.  I'm not on the list for the summit, but I'd like to stay in the dis=
cussion via e-mail.
 -- Tim

[1] http://bird.org/fuego/FrontPage

P.S. by the way, there's a bug in the above log_compare code.  Don't use it=
 directly.
