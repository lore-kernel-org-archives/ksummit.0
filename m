Return-Path: <olof@lixom.net>
MIME-Version: 1.0
In-Reply-To: <20160710223941.GK26097@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<20160710162203.GA9681@localhost> <20160710170117.GI26097@thunk.org>
	<578293C5.1090503@roeck-us.net> <20160710223941.GK26097@thunk.org>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 10 Jul 2016 18:12:15 -0700
Message-ID: <CAOesGMj2aDTBT+vq5WXVspdw5mTCnsvN7MRx-TZQAAi=tCm9VQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: multipart/alternative; boundary=001a113fbb5ae3a755053751d7e7
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113fbb5ae3a755053751d7e7
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 10, 2016 at 3:39 PM, Theodore Ts'o <tytso@mit.edu> wrote:

> On Sun, Jul 10, 2016 at 11:28:21AM -0700, Guenter Roeck wrote:
> > > There are **eleven** stable or longterm trees listed on kernel.org.
> >
> > I think this is one of the problems we are having: There are way too many
> > stable / longterm trees.
>
> Part of this is because it's too easy for someone to say, "I want to
> support [34].XX as a stable kernel".  Maybe it will only be for one
> architecture and only used for one platform (e.g. Yacto, or some other
> random distribution), but it's not immediately obvious (a) who is
> going to be using the stable kernel, and (b) what sort of testing it is
> actually getting.
>
> This is fine if stable kernels are advertised as being "best efforts
> only; whatever an individual stable kernel maintainer feels like
> putting into the project".  Which is fine, but then it's also no
> surprise if device kernel maintainers and BSP kernel maintainers
> aren't aren't taking the -stable kernel series.  And it also becomes
> surprising if other people are expecting that stable trees are
> supposed to be more stable than that, and then get indignant when
> there are regressions, bug fixes that aren't backported, bug fixes
> that work fine on the tip but which break after getting backported,
> etc.
>
> To be clear, though: That's the way things are right now, and someone
> who wants to change it is going to have to propose a procedure which
> ends up taking less work on maintainers and individual patch
> submiters, and/or volunteers to do the extra work, or realistically,
> it's not going to happen.
>
> > I think we are having kind of a circular problem: Device/BSP kernels
> > don't track stable because stable branches are considered to be not
> stable
> > enough, and stable branches are not tested well enough because they are
> not
> > picked up anyway. The only means to break that circle is to improve
> > stable testing to the point where people do feel comfortable picking it
> up.
> >
> > The key to solving that problem might be automation. There are lots of
> tools
> > available nowadays which could be used for that purpose (gerrit,
> buildbot, ...).
> > Patch submissions to stable releases could be run through an automated
> test
> > system and only be applied to stable release candidates after all tests
> passed.
> > This is widely done with vendor kernels today, and should be possible for
> > stable kernels as well. Such a system could even pick up patches tagged
> > with Fixes: or with Cc: stable from mainline automatically.
>
> Testing works fine for core kernel features and for things like file
> systems.  But it really doesn't work with real hardware, and Olaf
> described a couple of scenarios where fixes to device drivers broke
> older hardware supported by the same driver.  If what we are most
> worried about is "no regressions", one really extreme approach would
> be for a particular stable kernel series, to have a branch which
> *only* has patches for which reliable and comprehensive tests exist.
> This branch would at least get all of the security fixes and other bug
> fixes which are applicable to the core kernel, and but it would filter
> out, at least initially, all or most device driver patches.
>
> We could have another branch which includes the device driver fixes,
> and perhaps over time we could figure out some scheme by which if the
> significant device kernel and BSP kernel users could be convinced to
> contribute hardware and some test engineer resources, maybe some of
> the device driver fixes could go into the "tested" stable branch as
> well.
>
> Or maybe we just leave a clean separation between "core" and "device
> driver" stable branches, since in practice the answer seems to be that
> once an embedded device kernel maintainer gets things working, they
> **really** don't want to touch the device drivers ever again, since if
> there are any hardware or software issues, they want users buying an
> upgraded device every 12-18 months anyway.  :-)    At least that way
> maybe the users will get the core security and stability fixes....
>
> Or maybe we have a different policy for x86-specific device drivers
> than we do for the embedded architectures, since in practice we have
> more end users testing the x86 stable kernels, where as the embedded
> architectures tend to get things like OTA updates, and so it's not
> surprising that those maintainers are much more paranoid about driver
> changes which might brick their devices.
>
> (Yes, I know that some drivers are shared between x86 and ARM; and I
> suspect that's one of the places where we could easily have a problem
> where a bugfix that fixes things for an device on an x86 base might
> accidentally cause a regression for the same device hanging off of a
> different bus in a SOC configuration....  and no amount of test
> automation has any *hope* of catching thoes sorts of problems.)
>

Just to clarify, my commentary was NOT for ARM SoC support. It was for
drivers frequently used on x86 laptops. So it's not an "embedded only"
problem.

That being said, this was several years ago, and it's not necessarily worth
focusing all that much on -- I just wanted to give an example of a case
where using -stable in a product tree got pushback and why.


-Olof

--001a113fbb5ae3a755053751d7e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Jul 10, 2016 at 3:39 PM, Theodore Ts&#39;o <span dir=3D"ltr">&l=
t;<a href=3D"mailto:tytso@mit.edu" target=3D"_blank">tytso@mit.edu</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, Ju=
l 10, 2016 at 11:28:21AM -0700, Guenter Roeck wrote:<br>
&gt; &gt; There are **eleven** stable or longterm trees listed on <a href=
=3D"http://kernel.org" rel=3D"noreferrer" target=3D"_blank">kernel.org</a>.=
<br>
&gt;<br>
&gt; I think this is one of the problems we are having: There are way too m=
any<br>
&gt; stable / longterm trees.<br>
<br>
</span>Part of this is because it&#39;s too easy for someone to say, &quot;=
I want to<br>
support [34].XX as a stable kernel&quot;.=C2=A0 Maybe it will only be for o=
ne<br>
architecture and only used for one platform (e.g. Yacto, or some other<br>
random distribution), but it&#39;s not immediately obvious (a) who is<br>
going to be using the stable kernel, and (b) what sort of testing it is<br>
actually getting.<br>
<br>
This is fine if stable kernels are advertised as being &quot;best efforts<b=
r>
only; whatever an individual stable kernel maintainer feels like<br>
putting into the project&quot;.=C2=A0 Which is fine, but then it&#39;s also=
 no<br>
surprise if device kernel maintainers and BSP kernel maintainers<br>
aren&#39;t aren&#39;t taking the -stable kernel series.=C2=A0 And it also b=
ecomes<br>
surprising if other people are expecting that stable trees are<br>
supposed to be more stable than that, and then get indignant when<br>
there are regressions, bug fixes that aren&#39;t backported, bug fixes<br>
that work fine on the tip but which break after getting backported,<br>
etc.<br>
<br>
To be clear, though: That&#39;s the way things are right now, and someone<b=
r>
who wants to change it is going to have to propose a procedure which<br>
ends up taking less work on maintainers and individual patch<br>
submiters, and/or volunteers to do the extra work, or realistically,<br>
it&#39;s not going to happen.<br>
<span class=3D""><br>
&gt; I think we are having kind of a circular problem: Device/BSP kernels<b=
r>
&gt; don&#39;t track stable because stable branches are considered to be no=
t stable<br>
&gt; enough, and stable branches are not tested well enough because they ar=
e not<br>
&gt; picked up anyway. The only means to break that circle is to improve<br=
>
&gt; stable testing to the point where people do feel comfortable picking i=
t up.<br>
&gt;<br>
&gt; The key to solving that problem might be automation. There are lots of=
 tools<br>
&gt; available nowadays which could be used for that purpose (gerrit, build=
bot, ...).<br>
&gt; Patch submissions to stable releases could be run through an automated=
 test<br>
&gt; system and only be applied to stable release candidates after all test=
s passed.<br>
&gt; This is widely done with vendor kernels today, and should be possible =
for<br>
&gt; stable kernels as well. Such a system could even pick up patches tagge=
d<br>
&gt; with Fixes: or with Cc: stable from mainline automatically.<br>
<br>
</span>Testing works fine for core kernel features and for things like file=
<br>
systems.=C2=A0 But it really doesn&#39;t work with real hardware, and Olaf<=
br>
described a couple of scenarios where fixes to device drivers broke<br>
older hardware supported by the same driver.=C2=A0 If what we are most<br>
worried about is &quot;no regressions&quot;, one really extreme approach wo=
uld<br>
be for a particular stable kernel series, to have a branch which<br>
*only* has patches for which reliable and comprehensive tests exist.<br>
This branch would at least get all of the security fixes and other bug<br>
fixes which are applicable to the core kernel, and but it would filter<br>
out, at least initially, all or most device driver patches.<br>
<br>
We could have another branch which includes the device driver fixes,<br>
and perhaps over time we could figure out some scheme by which if the<br>
significant device kernel and BSP kernel users could be convinced to<br>
contribute hardware and some test engineer resources, maybe some of<br>
the device driver fixes could go into the &quot;tested&quot; stable branch =
as<br>
well.<br>
<br>
Or maybe we just leave a clean separation between &quot;core&quot; and &quo=
t;device<br>
driver&quot; stable branches, since in practice the answer seems to be that=
<br>
once an embedded device kernel maintainer gets things working, they<br>
**really** don&#39;t want to touch the device drivers ever again, since if<=
br>
there are any hardware or software issues, they want users buying an<br>
upgraded device every 12-18 months anyway.=C2=A0 :-)=C2=A0 =C2=A0 At least =
that way<br>
maybe the users will get the core security and stability fixes....<br>
<br>
Or maybe we have a different policy for x86-specific device drivers<br>
than we do for the embedded architectures, since in practice we have<br>
more end users testing the x86 stable kernels, where as the embedded<br>
architectures tend to get things like OTA updates, and so it&#39;s not<br>
surprising that those maintainers are much more paranoid about driver<br>
changes which might brick their devices.<br>
<br>
(Yes, I know that some drivers are shared between x86 and ARM; and I<br>
suspect that&#39;s one of the places where we could easily have a problem<b=
r>
where a bugfix that fixes things for an device on an x86 base might<br>
accidentally cause a regression for the same device hanging off of a<br>
different bus in a SOC configuration....=C2=A0 and no amount of test<br>
automation has any *hope* of catching thoes sorts of problems.)<br></blockq=
uote><div><br></div><div>Just to clarify, my commentary was NOT for ARM SoC=
 support. It was for drivers frequently used on x86 laptops. So it&#39;s no=
t an &quot;embedded only&quot; problem.</div><div><br></div><div>That being=
 said, this was several years ago, and it&#39;s not necessarily worth focus=
ing all that much on -- I just wanted to give an example of a case where us=
ing -stable in a product tree got pushback and why.</div><div><br></div><di=
v><br></div><div>-Olof</div><div><br></div></div></div></div>

--001a113fbb5ae3a755053751d7e7--
