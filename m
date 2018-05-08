Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D8AA5A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 20:29:17 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0119.outbound.protection.outlook.com [104.47.36.119])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3884F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 20:29:16 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Tony Lindgren <tony@atomide.com>, Greg
	KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Date: Tue, 8 May 2018 20:29:14 +0000
Message-ID: <20180508202912.GC8514@sasha-vm>
References: <20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
In-Reply-To: <20180508034820.GE999@thunk.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C71BF657BE9FED458B00B2D7705208E7@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 07, 2018 at 11:48:20PM -0400, Theodore Y. Ts'o wrote:
>On Tue, May 08, 2018 at 02:34:41AM +0000, Sasha Levin via Ksummit-discuss =
wrote:
>>
>> Tony, I'm curious, how many users are you aware of who actually run
>> Linus's tree? All the users I've encountered so far on Azure seem to be
>> running something based on -stable.
>
>The people who run Linus's tree and test -rc kernels tend to be kernel
>developers and individual users who want to run bleeding edge kernels
>and who generally are technically clueful.  If you were talking about
>SLR cameras, you'd call them the "prosumers" segment of the market.
>
>It tends to be more on desktops and laptops, so it doesn't surprise me
>that you don't often see them in a hosting environment where you have
>to pay $$$.  (And where you do see them in a hosting environment, it's
>probably for things like gce-xfstests.)
>
>> I think that a question we should be asking ourselves is whether we
>> should be basing our decisions here on the assumption that (pretty much)
>> no one runs Linus's tree anymore?
>
>These people *do* exist, because as a maintainer, I get bug reports
>from them.  (And sometimes as a user, I send bug reports when running
>-rc kernels to other maintainers, such as the i915 drivers and the
>Intel Wireless driver folks.)
>
>Such reports are incredibly valuable and precious to me, since it
>allows me to find problems that weren't picked up in my own testing.
>(In the case of Intel Wireless, a while back the IWL team didn't have
>Aruba Enterprise Access Points in their test hardware library, so I
>found a regression after the merge window because I was running -rcX
>on my laptop, and wireless access to googleguest network broke.  If I
>hadn't been running -rcX, they probably wouldn't have discovered this
>problem until after that particular kernel had been released.)
>
>So keeping those users happy is a good thing; since they tend to be
>very technically clueful, they can do bisections for you, and they are
>able to give a detailed and useful bug report.  If they report that a
>regression that was introduced in -rc2 is fixed by a particular patch,
>I want to push it into -rc3 immediately, and not let it stall in
>linux-next.  If the reason why is because you don't trust my patch
>because it "only" got tested by the technically advanced user
>reporting the regression, then don't take patches from -rc3 into your
>stable branch right away!  Let it bake in Linus's tree anfor a week or
>two, instead of demanding that patches stick around in Linux-next
>before flowing into Linus's tree.
>
>Because I will guarantee you this --- there are more real users
>running Linus's tree than linux-next.  This is because Linus's tree
>tends to be far more stable than linux-next, since after -rc2
>linux-next starts getting the first set of experiments for what will
>be going into the next merge window.  So while I am willing to run
>something based on -rc2 or later on my laptop, there is no way in heck
>I would be willing to put linux-next on my laptop.  That's just way
>too exciting for me....
>
>Would I pull down linux-next, and fire up a VM running gce-xfstests?
>Sure.  But that's not a real-life use case; that's just running canned
>test cases.  And more often than not, linux-next will be broken while
>Linus's -rcX tree is just fine; which is why I do most of my ext4
>testing using patches based on top of -rcX, not based on top of
>linux-next.

This is interesting. We have a group of power users who are testing out
-rc releases, who are usually happy to test out a fast moving target and
provide helpful reports back. We also have a group who run a -stable
kernel (-stable build/distro/android/etc) who want to avoid having to
report bugs to us.

What we don't have is a group of people who use Linus's actual releases
(not the -rc stuff, but the actual point releases). Power users will
move on to the next kernel, and -stable folks won't touch that release
until there's a corresponding -stable.

Even rawhide, like Josh mentioned, will just fill back with the merge
window commits after the release of an older kernel.

So the problem I'm seeing is that since a merge window is open only once
every 2-3 months people will sometimes try to push poorly tested code
just to make that merge window. Additionally, as later -rc releases
start showing up people will again merge poorly tested fixes just to
make it in time for that release.

For both cases, people will push poorly tested code in the kernel just
because they want to make it in time for a kernel release that no one
will actually use.

What if, instead, Linus doesn't actually ever release a point release?
We can make the merge window open more often, and since there's no
actual release, people won't rush to push fixes in later -rc cycles.

We take away the incentive to push poorly tested code. Maintainers still
free to commit anything they'd like, but there's no reason to commit
code they're not confident of just to make it to a random release no one
will use.

Merge window will happen more often, so there's no real reason to rush
things in a particular window, and since -stable releases every week
there's no rush to push a fix in since the next release is just a week
away.=
