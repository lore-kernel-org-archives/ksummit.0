Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59CB0B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 19:32:39 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA1BC14F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 19:32:38 +0000 (UTC)
Message-ID: <55A563A2.6010601@oracle.com>
Date: Tue, 14 Jul 2015 15:31:46 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <55A26C5B.8060007@oracle.com>	<20150713105210.6e367f4b@noble>	<55A33E48.2040202@oracle.com>	<20150713142132.08fead4d@gandalf.local.home>	<55A45AD8.5010400@oracle.com>	<20150713210226.519dedfd@gandalf.local.home>	<20150714104623.GQ11162@sirena.org.uk>	<55A51548.4040502@oracle.com>	<20150714152515.GX11162@sirena.org.uk>	<55A52B8B.5060606@oracle.com>	<20150714155648.GA11162@sirena.org.uk>	<55A55CA5.6050506@oracle.com>
	<CAMuHMdXJ4side-bAuggQS3-DY0bZFQWT1i4L2Ktu91+SVoLUpQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXJ4side-bAuggQS3-DY0bZFQWT1i4L2Ktu91+SVoLUpQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/14/2015 03:18 PM, Geert Uytterhoeven wrote:
> On Tue, Jul 14, 2015 at 9:01 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
>> > On 07/14/2015 11:56 AM, Mark Brown wrote:
>>>>> >>>> If the issue being fixed is serious enough to take out substantial
>>>>>>> >>>> > > portion of our test coverage or affect a lot of other development
>>>>>>> >>>> > > usage then that's really disruptive to other work, it impacts things
>>>>>>> >>>> > > like bisection for example.  A strong rule does nobody any good,
>>>>>>> >>>> > > it's overkill for the problem.
>>>>> >>> > If there's an issue that causes that effect then the original commit that
>>>>> >>> > caused it should be reverted rather than introducing an untested fix right
>>>>> >>> > away.
>>>>> >>> > Obviously not a hard rule, but it should be the case in general.
>>> >> That's still sending a change of course which was what was being
>>> >> objected to.
>> >
>> > Lesser of two evils? I can't really come up with a safer solution rather than
>> > reverting it (not blindly, the revert will need an ack too, and that's assuming
>> > that the fix is not trivial).
> And that it can be reverted, i.e. there are no later commits that depend on it.

Right, this it tricky - one would need to audit the commit the depend on it for
correctness knowing that a dependency has a bug.

The premise here is that if we're not dealing with trivial breakage, reverting is
generally safer than fixing, but for some reason we rarely take that path.


Thanks,
Sasha
