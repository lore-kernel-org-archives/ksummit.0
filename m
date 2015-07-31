Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 14FFF475
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:59:42 +0000 (UTC)
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CA7DE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:59:41 +0000 (UTC)
Received: by wibud3 with SMTP id ud3so68737112wib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 11:59:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150731182256.GA6508@kroah.com>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
	<20150731171500.GC4995@roeck-us.net>
	<CAErSpo5ZDAAJVo7Lm6e2rg3sqvrtsTHRaV9nBDy+SDVMjy8MKw@mail.gmail.com>
	<20150731181245.GA5969@kroah.com>
	<20150731181757.GA8747@codemonkey.org.uk>
	<20150731182256.GA6508@kroah.com>
Date: Fri, 31 Jul 2015 11:59:39 -0700
Message-ID: <CAPcyv4jjTmF3MFY2LAjvLx1Ay7TijcC7tL2gnfmORpURXOyGzw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Sasha Levin <sasha.levin@oracle.com>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 11:22 AM, Greg KH <greg@kroah.com> wrote:
> On Fri, Jul 31, 2015 at 02:17:58PM -0400, Dave Jones wrote:
>> On Fri, Jul 31, 2015 at 11:12:45AM -0700, Greg Kroah-Hartman wrote:
>>  > On Fri, Jul 31, 2015 at 12:51:53PM -0500, Bjorn Helgaas wrote:
>>  > > I prefer that a dmesg collected in the simplest possible way, with no
>>  > > special config or boot flags, be as useful as possible.  So converting
>>  > > to dynamic debug requires much more thought about which messages
>>  > > should be always printed and which should become dynamic.
>>  >
>>  > Why would a debugging message ever not be dynamic?  They are there for
>>  > you to use, and turn off when you are done.  If you want a user to
>>  > report the output of them, then of course they should be dynamic so they
>>  > can just write a line to a debugfs file and then start seeing them
>>
>> This implies a user knows ahead of time what bugs they are going to hit,
>> and which messages they need to enable.  For hard-to-reproduce bugs,
>> or bugs that exhibit non-obvious symptoms, this isn't workable.
>
> Fair enough, but wouldn't those messages be "errors"?
>
> Anyway, this is way off-topic from the original thread, it all comes
> down to specifics of the message that is being written and the
> surrounding issues of why it would be written.

One more thought on this tangent... I've had a task stuck at the
bottom of my backlog to look at extending dynamic_debug call sites to
optionally be tracepoints so that you could feasibly have debug on all
the time with less run time impact.
