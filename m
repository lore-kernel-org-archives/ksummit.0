Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1D7ABAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:34:37 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 230341AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:34:37 +0000 (UTC)
Received: by igcqs7 with SMTP id qs7so115233193igc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:34:36 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20150715164054.GA13378@kroah.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
	<20150715160347.GB12543@kroah.com> <55A68736.1010104@oracle.com>
	<20150715164054.GA13378@kroah.com>
Date: Wed, 15 Jul 2015 15:34:36 -0400
Message-ID: <CA+5PVA7iBGy=xvpFy5ULinovVjJk5zZnqWH37xZP=N8r6u685A@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Wed, Jul 15, 2015 at 12:40 PM, Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 15, 2015 at 12:15:50PM -0400, Sasha Levin wrote:
>> On 07/15/2015 12:03 PM, Greg KH wrote:
>> >> > That would be the ideal setup for me though -- tagged or branched -rc
>> >> > candidates of stable releases that I'd be happy to put through the
>> >> > build/boot test at my end.
>> > kernelci now handles -rc stable releases, so would this just be a
>> > duplication of that work?
>>
>> I've actually suggested -rc stable cycles for the purpose of getting -rc
>> stable kernels into users hands by making it possible for distros to
>> ship these as proposed/test kernels by giving them enough time (right now
>> the review cycle is only a few days, making it impossible for distros
>> to ship them).
>
> Given that I do a new -stable release on the average of one a week,
> getting these into a distro as a testing kernel and getting feedback is
> going to be pretty much impossible.
>
>> As Guenter and Greg mentioned, there's already a fair amount of testing
>> being done on the queue branches, but there's really no testing being
>> done by end users before they receive a final kernel.
>
> I get feedback from Fedora, they always let me know when something goes
> really wrong, which is pretty unusual.  So I don't know if "more
> testing" is going to really pay off.

Well... yes.  We do give feedback, sometimes even other than "oh my
this is broken."  However, our rollout plans tend to skip all the .1
stable releases because we've been bitten a few times in the past with
patches that went into -rc1 that were wrong.  Pretty much the
scenarios being discussed.  So we have held off until .2 comes out to
rebase our releases.

Now, we switched to that a while ago before you started the "must be
in a Linus release" rule, so maybe .1 releases are better now.  We
just don't have data to back it up on the Fedora side though, and I
wanted to be clear on why that is.

Another reason we don't ship .1 releases is because the backlog of
patches is usually huge still, and the prior 4.X-1.y release is
usually still getting updates at this point.  So shipping a .1 rebase
to turn around and ship .2 a week later is a lot of churn for
relatively little gain.  We can get the rebase and the extra patches
in .2 by simply waiting.

josh
