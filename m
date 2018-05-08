Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C19EB8D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 20:40:14 +0000 (UTC)
Received: from mail-ot0-f173.google.com (mail-ot0-f173.google.com
	[74.125.82.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE0B6F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 20:40:13 +0000 (UTC)
Received: by mail-ot0-f173.google.com with SMTP id 77-v6so37660489otd.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 08 May 2018 13:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
In-Reply-To: <20180508202912.GC8514@sasha-vm>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Tue, 08 May 2018 20:40:02 +0000
Message-ID: <CAFhKne-aDcMKD8FjfROGZ-=ffmq3Xa+7n0dm8uvzKJ_7WO-qCQ@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: multipart/alternative; boundary="000000000000069f56056bb7cba7"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, w@1wt.eu
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--000000000000069f56056bb7cba7
Content-Type: text/plain; charset="UTF-8"

I think your sample size omits some people. I run Debian Testing on my
laptop. That gets something akin to a Linus release pretty soon after he
releases it, and while it gets some amount of -stable patches, it
progresses to the next release fairly rapidly.

Added Ben to the cc for more updates.

I think Fedora does something similar.

On Tue, May 8, 2018, 16:29 Sasha Levin via Ksummit-discuss, <
ksummit-discuss@lists.linuxfoundation.org> wrote:

> On Mon, May 07, 2018 at 11:48:20PM -0400, Theodore Y. Ts'o wrote:
> >On Tue, May 08, 2018 at 02:34:41AM +0000, Sasha Levin via Ksummit-discuss
> wrote:
> >>
> >> Tony, I'm curious, how many users are you aware of who actually run
> >> Linus's tree? All the users I've encountered so far on Azure seem to be
> >> running something based on -stable.
> >
> >The people who run Linus's tree and test -rc kernels tend to be kernel
> >developers and individual users who want to run bleeding edge kernels
> >and who generally are technically clueful.  If you were talking about
> >SLR cameras, you'd call them the "prosumers" segment of the market.
> >
> >It tends to be more on desktops and laptops, so it doesn't surprise me
> >that you don't often see them in a hosting environment where you have
> >to pay $$$.  (And where you do see them in a hosting environment, it's
> >probably for things like gce-xfstests.)
> >
> >> I think that a question we should be asking ourselves is whether we
> >> should be basing our decisions here on the assumption that (pretty much)
> >> no one runs Linus's tree anymore?
> >
> >These people *do* exist, because as a maintainer, I get bug reports
> >from them.  (And sometimes as a user, I send bug reports when running
> >-rc kernels to other maintainers, such as the i915 drivers and the
> >Intel Wireless driver folks.)
> >
> >Such reports are incredibly valuable and precious to me, since it
> >allows me to find problems that weren't picked up in my own testing.
> >(In the case of Intel Wireless, a while back the IWL team didn't have
> >Aruba Enterprise Access Points in their test hardware library, so I
> >found a regression after the merge window because I was running -rcX
> >on my laptop, and wireless access to googleguest network broke.  If I
> >hadn't been running -rcX, they probably wouldn't have discovered this
> >problem until after that particular kernel had been released.)
> >
> >So keeping those users happy is a good thing; since they tend to be
> >very technically clueful, they can do bisections for you, and they are
> >able to give a detailed and useful bug report.  If they report that a
> >regression that was introduced in -rc2 is fixed by a particular patch,
> >I want to push it into -rc3 immediately, and not let it stall in
> >linux-next.  If the reason why is because you don't trust my patch
> >because it "only" got tested by the technically advanced user
> >reporting the regression, then don't take patches from -rc3 into your
> >stable branch right away!  Let it bake in Linus's tree anfor a week or
> >two, instead of demanding that patches stick around in Linux-next
> >before flowing into Linus's tree.
> >
> >Because I will guarantee you this --- there are more real users
> >running Linus's tree than linux-next.  This is because Linus's tree
> >tends to be far more stable than linux-next, since after -rc2
> >linux-next starts getting the first set of experiments for what will
> >be going into the next merge window.  So while I am willing to run
> >something based on -rc2 or later on my laptop, there is no way in heck
> >I would be willing to put linux-next on my laptop.  That's just way
> >too exciting for me....
> >
> >Would I pull down linux-next, and fire up a VM running gce-xfstests?
> >Sure.  But that's not a real-life use case; that's just running canned
> >test cases.  And more often than not, linux-next will be broken while
> >Linus's -rcX tree is just fine; which is why I do most of my ext4
> >testing using patches based on top of -rcX, not based on top of
> >linux-next.
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
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--000000000000069f56056bb7cba7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I think your sample size omits some people. I run Debian =
Testing on my laptop. That gets something akin to a Linus release pretty so=
on after he releases it, and while it gets some amount of -stable patches, =
it progresses to the next release fairly rapidly.<div dir=3D"auto"><br></di=
v><div dir=3D"auto">Added Ben to the cc for more updates.</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">I think Fedora does something similar.</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, May 8, 201=
8, 16:29 Sasha Levin via Ksummit-discuss, &lt;<a href=3D"mailto:ksummit-dis=
cuss@lists.linuxfoundation.org">ksummit-discuss@lists.linuxfoundation.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, May 07, 2018 =
at 11:48:20PM -0400, Theodore Y. Ts&#39;o wrote:<br>
&gt;On Tue, May 08, 2018 at 02:34:41AM +0000, Sasha Levin via Ksummit-discu=
ss wrote:<br>
&gt;&gt;<br>
&gt;&gt; Tony, I&#39;m curious, how many users are you aware of who actuall=
y run<br>
&gt;&gt; Linus&#39;s tree? All the users I&#39;ve encountered so far on Azu=
re seem to be<br>
&gt;&gt; running something based on -stable.<br>
&gt;<br>
&gt;The people who run Linus&#39;s tree and test -rc kernels tend to be ker=
nel<br>
&gt;developers and individual users who want to run bleeding edge kernels<b=
r>
&gt;and who generally are technically clueful.=C2=A0 If you were talking ab=
out<br>
&gt;SLR cameras, you&#39;d call them the &quot;prosumers&quot; segment of t=
he market.<br>
&gt;<br>
&gt;It tends to be more on desktops and laptops, so it doesn&#39;t surprise=
 me<br>
&gt;that you don&#39;t often see them in a hosting environment where you ha=
ve<br>
&gt;to pay $$$.=C2=A0 (And where you do see them in a hosting environment, =
it&#39;s<br>
&gt;probably for things like gce-xfstests.)<br>
&gt;<br>
&gt;&gt; I think that a question we should be asking ourselves is whether w=
e<br>
&gt;&gt; should be basing our decisions here on the assumption that (pretty=
 much)<br>
&gt;&gt; no one runs Linus&#39;s tree anymore?<br>
&gt;<br>
&gt;These people *do* exist, because as a maintainer, I get bug reports<br>
&gt;from them.=C2=A0 (And sometimes as a user, I send bug reports when runn=
ing<br>
&gt;-rc kernels to other maintainers, such as the i915 drivers and the<br>
&gt;Intel Wireless driver folks.)<br>
&gt;<br>
&gt;Such reports are incredibly valuable and precious to me, since it<br>
&gt;allows me to find problems that weren&#39;t picked up in my own testing=
.<br>
&gt;(In the case of Intel Wireless, a while back the IWL team didn&#39;t ha=
ve<br>
&gt;Aruba Enterprise Access Points in their test hardware library, so I<br>
&gt;found a regression after the merge window because I was running -rcX<br=
>
&gt;on my laptop, and wireless access to googleguest network broke.=C2=A0 I=
f I<br>
&gt;hadn&#39;t been running -rcX, they probably wouldn&#39;t have discovere=
d this<br>
&gt;problem until after that particular kernel had been released.)<br>
&gt;<br>
&gt;So keeping those users happy is a good thing; since they tend to be<br>
&gt;very technically clueful, they can do bisections for you, and they are<=
br>
&gt;able to give a detailed and useful bug report.=C2=A0 If they report tha=
t a<br>
&gt;regression that was introduced in -rc2 is fixed by a particular patch,<=
br>
&gt;I want to push it into -rc3 immediately, and not let it stall in<br>
&gt;linux-next.=C2=A0 If the reason why is because you don&#39;t trust my p=
atch<br>
&gt;because it &quot;only&quot; got tested by the technically advanced user=
<br>
&gt;reporting the regression, then don&#39;t take patches from -rc3 into yo=
ur<br>
&gt;stable branch right away!=C2=A0 Let it bake in Linus&#39;s tree anfor a=
 week or<br>
&gt;two, instead of demanding that patches stick around in Linux-next<br>
&gt;before flowing into Linus&#39;s tree.<br>
&gt;<br>
&gt;Because I will guarantee you this --- there are more real users<br>
&gt;running Linus&#39;s tree than linux-next.=C2=A0 This is because Linus&#=
39;s tree<br>
&gt;tends to be far more stable than linux-next, since after -rc2<br>
&gt;linux-next starts getting the first set of experiments for what will<br=
>
&gt;be going into the next merge window.=C2=A0 So while I am willing to run=
<br>
&gt;something based on -rc2 or later on my laptop, there is no way in heck<=
br>
&gt;I would be willing to put linux-next on my laptop.=C2=A0 That&#39;s jus=
t way<br>
&gt;too exciting for me....<br>
&gt;<br>
&gt;Would I pull down linux-next, and fire up a VM running gce-xfstests?<br=
>
&gt;Sure.=C2=A0 But that&#39;s not a real-life use case; that&#39;s just ru=
nning canned<br>
&gt;test cases.=C2=A0 And more often than not, linux-next will be broken wh=
ile<br>
&gt;Linus&#39;s -rcX tree is just fine; which is why I do most of my ext4<b=
r>
&gt;testing using patches based on top of -rcX, not based on top of<br>
&gt;linux-next.<br>
<br>
This is interesting. We have a group of power users who are testing out<br>
-rc releases, who are usually happy to test out a fast moving target and<br=
>
provide helpful reports back. We also have a group who run a -stable<br>
kernel (-stable build/distro/android/etc) who want to avoid having to<br>
report bugs to us.<br>
<br>
What we don&#39;t have is a group of people who use Linus&#39;s actual rele=
ases<br>
(not the -rc stuff, but the actual point releases). Power users will<br>
move on to the next kernel, and -stable folks won&#39;t touch that release<=
br>
until there&#39;s a corresponding -stable.<br>
<br>
Even rawhide, like Josh mentioned, will just fill back with the merge<br>
window commits after the release of an older kernel.<br>
<br>
So the problem I&#39;m seeing is that since a merge window is open only onc=
e<br>
every 2-3 months people will sometimes try to push poorly tested code<br>
just to make that merge window. Additionally, as later -rc releases<br>
start showing up people will again merge poorly tested fixes just to<br>
make it in time for that release.<br>
<br>
For both cases, people will push poorly tested code in the kernel just<br>
because they want to make it in time for a kernel release that no one<br>
will actually use.<br>
<br>
What if, instead, Linus doesn&#39;t actually ever release a point release?<=
br>
We can make the merge window open more often, and since there&#39;s no<br>
actual release, people won&#39;t rush to push fixes in later -rc cycles.<br=
>
<br>
We take away the incentive to push poorly tested code. Maintainers still<br=
>
free to commit anything they&#39;d like, but there&#39;s no reason to commi=
t<br>
code they&#39;re not confident of just to make it to a random release no on=
e<br>
will use.<br>
<br>
Merge window will happen more often, so there&#39;s no real reason to rush<=
br>
things in a particular window, and since -stable releases every week<br>
there&#39;s no rush to push a fix in since the next release is just a week<=
br>
away.<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk" rel=3D"noreferrer">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div>

--000000000000069f56056bb7cba7--
