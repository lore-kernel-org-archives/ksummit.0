Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 921DB9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 06:19:42 +0000 (UTC)
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF11F146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 06:19:41 +0000 (UTC)
Received: by mail-it0-f42.google.com with SMTP id u186so38599362ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 09 Jul 2016 23:19:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1468114447.2333.12.camel@HansenPartnership.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
From: Olof Johansson <olof@lixom.net>
Date: Sat, 9 Jul 2016 23:19:39 -0700
Message-ID: <CAOesGMgL8AD+_uW+cD83ZLbnc3OiahfzJx6hhg1XTCyzgwZecQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Trond Myklebust <trondmy@primarydata.com>,
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

On Sat, Jul 9, 2016 at 6:34 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> [duplicate ksummit-discuss@ cc removed]
> On Sat, 2016-07-09 at 15:49 +0000, Trond Myklebust wrote:
>> > On Jul 9, 2016, at 06:05, James Bottomley <
>> > James.Bottomley@HansenPartnership.com> wrote:
>> >
>> > On Fri, 2016-07-08 at 17:43 -0700, Dmitry Torokhov wrote:
>> > > On Sat, Jul 09, 2016 at 02:37:40AM +0200, Rafael J. Wysocki
>> > > wrote:
>> > > > I tend to think that all known bugs should be fixed, at least
>> > > > because once they have been fixed, no one needs to remember
>> > > > about them any more. :-)
>> > > >
>> > > > Moreover, minor fixes don't really introduce regressions that
>> > > > often
>> > >
>> > > Famous last words :)
>> >
>> > Actually, beyond the humour, the idea that small fixes don't
>> > introduce regressions must be our most annoying anti-pattern.  The
>> > reality is that a lot of so called fixes do introduce bugs.  The
>> > way this happens is that a lot of these "obvious" fixes go through
>> > without any deep review (because they're obvious, right?) and the
>> > bugs noisily turn up slightly later.  The way this works is usually
>> > that some code rearrangement is sold as a "fix" and later turns out
>> > not to be equivalent to the prior code ... sometimes in incredibly
>> > subtle ways. I think we should all be paying much more than lip
>> > service to the old adage "If it ain't broke don't fix it=E2=80=9D.
>>
>> The main problem with the stable kernel model right now is that we
>> have no set of regression tests to apply. Unless someone goes in and
>> actually tests each and every stable kernel affected by that =E2=80=9CCc=
:
>> stable=E2=80=9D line, then regressions will eventually happen.
>>
>> So do we want to have another round of =E2=80=9Chow do we regression tes=
t the
>> kernel=E2=80=9D talks?
>
> If I look back on our problems, they were all in device drivers, so
> generic regression testing wouldn't have picked them up, in fact most
> would need specific testing on the actual problem device.  So, I don't
> really think testing is the issue, I think it's that we commit way too
> many "obvious" patches.  In SCSI we try to gate it by having a
> mandatory Reviewed-by: tag before something gets in, but really perhaps
> we should insist on Tested-by: as well ... that way there's some
> guarantee that the actual device being modified has been tested.


Having worked on one of the projects that were trying to track stable
but got internal pushback against, it it came down to this:

The in-house developers on a certain subsystem didn't trust the
upstream maintainers to not regress their drivers -- in particular
they had seen some painful regressions on older chipsets when newer
hardware support was picked up. Esoteric bugs that had been fixed with
the help of the support team weren't folded in properly in the
upstream sources, or when they did they looked sufficiently different
that when -stable came around they didn't want to revert back to that
version, or they weren't yet picked up for upstream and now other
fixes were touching the same code and that seemed risky. They had a
code base that worked for the use cases they cared about (with the fix
applied that the support team had provided), and very little interest
in risking a regression from switching to the upstream version.

In hindsight, I think the specific problems seen had later been solved
through other means, but the reluctance to keep upreving to -stable
was hard to get rid of once someone had gotten burnt by it, and it
didn't seem worth it at the time.

Instead, what the team started doing was using -stable as a source for
fixes -- when looking at a bug, first think you looked for was to see
if someone had touched that code/subsystem in -stable. It's not ideal
in the sense that you have to hit the bug and someone has to look at
it, but it was the state we ended up in on that project. It means
-stable still has substanial value even though it's not merged
directly.


-Olof
