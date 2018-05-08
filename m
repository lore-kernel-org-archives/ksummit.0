Return-Path: <zarniwhoop73@googlemail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3D29D26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:08:19 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 42F89299
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 21:08:19 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id t63-v6so20547417vkb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 08 May 2018 14:08:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180508202912.GC8514@sasha-vm>
References: <20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
From: Ken Moffat <zarniwhoop73@googlemail.com>
Message-ID: <CANVEwpawkz0FHii-QOKLj+=WELf06F+mWPqs5L8DA_n4fetLGg@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Tue, 08 May 2018 21:08:19 -0000

On 8 May 2018 at 21:29, Sasha Levin <Alexander.Levin@microsoft.com> wrote:

>
> This is interesting. We have a group of power users who are testing out
> -rc releases, who are usually happy to test out a fast moving target and
> provide helpful reports back. We also have a group who run a -stable
> kernel (-stable build/distro/android/etc) who want to avoid having to
> report bugs to us.
>
> What we don't have is a group of people who use Linus's actual releases
> (not the -rc stuff, but the actual point releases). Power users will
> move on to the next kernel, and -stable folks won't touch that release
> until there's a corresponding -stable.

I resent that assumption :)

As a 'prosumer' in this context, I try to test an early -rc (usually
not until -rc2, sometimes not until later, depending on what I see on
this list), and then intermittently I spread the testing to more of my
desktop machines using later -rc versions. Once linus releases .0 I
hope to move my current systems to that in the next few days. But as
always, other things (sometimes real life, sometimes just new changes
in userspace) intervene.

After that, I will pick up Greg's latest if I build a new system
before the next kernel release, or if I become aware of something
critical (for my usage) in it.  And then probably 4 or 5 weeks after
linus's release I will start the next cycle of testing -rc verisons.

So no, I rarely test Greg's current stable version, but there _is_ a
period of some weeks where I run .0 kernels.

=C4=B8en


>
> Even rawhide, like Josh mentioned, will just fill back with the merge
> window commits after the release of an older kernel.
>
> So the problem I'm seeing is that since a merge window is open only once
> every 2-3 months people will sometimes try to push poorly tested code
> just to make that merge window. Additionally, as later -rc releases
> start showing up people will again merge poorly tested fixes just to
> make it in time for that release.
>
> For both cases, people will push poorly tested code in the kernel just
> because they want to make it in time for a kernel release that no one
> will actually use.
>
> What if, instead, Linus doesn't actually ever release a point release?
> We can make the merge window open more often, and since there's no
> actual release, people won't rush to push fixes in later -rc cycles.
>
> We take away the incentive to push poorly tested code. Maintainers still
> free to commit anything they'd like, but there's no reason to commit
> code they're not confident of just to make it to a random release no one
> will use.
>
> Merge window will happen more often, so there's no real reason to rush
> things in a particular window, and since -stable releases every week
> there's no rush to push a fix in since the next release is just a week
> away.
