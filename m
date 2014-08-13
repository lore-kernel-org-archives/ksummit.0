Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B05F548E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 00:01:43 +0000 (UTC)
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 882AE20266
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 00:01:41 +0000 (UTC)
Received: by mail-qg0-f54.google.com with SMTP id z60so10438429qgd.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 17:01:40 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 12 Aug 2014 17:01:40 -0700
Message-ID: <CALAqxLUcfaJnxdmkn6mucepNk3QaCQdcSPLRjjeKsk_OTp=uLA@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: multipart/alternative; boundary=001a11c1daf81dac9a0500777e6a
Cc: "Joseph S. Myers" <joseph@codesourcery.com>,
	lkml <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a11c1daf81dac9a0500777e6a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Next week at Kernel Summit, I'm hoping to have a discussion on 2038 during
one of the unconference slots, so I wanted to send out some background
information about the various proposed approaches (as well as send this out
for wider input, since apparently there won't be much libc representation
at KS).

So 2038 brings the end of time for 32bit architectures.  It being some
twenty four years ahead, it may seem like there is plenty of time for folks
to migrate to 64bit architectures that are (mostly) unaffected by this
issue. However, 32bit processors are still being produced today in
extremely high volumes, and many of those systems are being used in
commercial, industrial and medical environments, where these systems may be
quite literally embedded into the walls and machinery and are expected to
run for 25 years or more. As these small systems become more and more
pervasive, the risks of major trouble in 2038 grow. And that=E2=80=99s to s=
ay
nothing of the impact on future classic-car resale prices for fancy cars
like the Tesla when the high end in-dash display won=E2=80=99t work (gasp!)=
.

Thus, the =E2=80=9Cjust upgrade to 64bit=E2=80=9D solution isn=E2=80=99t re=
ally sufficient, and we
need to find a transition plan soon, which will allow 32bit cpus being sold
today and in the future to function correctly past 2038.

Other OSes have already started rolling out solutions. NetBSD switched to
64bit time_t in 2012, providing a compatibility layer for old applications.
Then in 2013, OpenBSD switched its 32bit systems time_t to use long long.
You can read more about the OpenBSD transition here:
http://www.openbsd.org/papers/eurobsdcon_2013_time_t/. One item to note is
that NetBSD preserved compatibility with 2038 unsafe applications, while
OpenBSD did not (seeing the certainty of excluding unsafe applications as a
feature over compatibility). For Linux, we obviously want to maintain
compatibility, but I think its important we recognise we=E2=80=99re not the=
 first
movers here, and many of the discussions we=E2=80=99ll be having have alrea=
dy been
had in those communities. I also think we should be sure to credit the
NetBSD and OpenBSD devs for jumping in on this early and working to ensure
issues in the userspace applications we share are already addressed.

Also, just to clarify, as time related discussions can bring out a laundry
list of issues, I would like to focus this discussion on providing a 2038
solution for existing interfaces and applications in a way that ideally
doesn't require modifying application source code.  While there will be
plenty of places where applications have cast or stored time_t values
explicitly as longs, and for those applications, deep modifications will be
necessary. But I=E2=80=99d like to avoid getting into new-interface discuss=
ions,
like exporting ktime_t like nanosecond interfaces instead of timepsecs,
unifying time-stamping formats, or methods for avoiding leapseconds. Those
are all interesting issues, and I=E2=80=99d be up for discussing them separ=
ately,
but those issue apply equally to 32bit and 64bit systems, and really aren't
2038 specific, so I think its best to separate them out.

I think any solution to the 2038 issue for Linux, from the kernel=E2=80=99s
perspective, will have a number of phases:

1) In-kernel correctness: Making sure the kernel itself handles the 2038
rollover correctly. As noted in LWN (https://lwn.net/Articles/607741/) this
work has begun and portions have been merged. Personally, I don=E2=80=99t r=
eally
see this as that interesting of a discussion topic, and with the exception
of dealing with external representations of time like on-disk filesystem
formats, etc, it is for the most part a matter of just going through,
finding and fixing things (with a few extra complications around ioctls).
Mostly this will revolve around adding explicitly sized 64bit time_t types
(and 32bit types for compatibility), and migrating in-kernel users over to
the explicitly sized implementations, allowing us to validate conversion by
eventually removing the in-kernel time_t type, of course finding non-time_t
custom storage uses will be a long tail of work.

2) Userspace ABI modifications: This includes how we expose the new 64bit
time_t and related structures to userland via syscalls and ioctls, and how
we preserve compatibility to older applications. This is probably the most
complex issue, as the different choices have large impacts to how the
transition in userspace is done.

3) Aiding in validating userspace correctness: While we want to preserve
compatibility, there is the very real aspect that 2038 unsafe applications
(ie: almost all 32bit applications today) are terminally broken in 2038.
While we can try to ensure that we don=E2=80=99t break those applications
prematurely, we do want to ensure folks using unsafe applications are aware
and motivated to upgrade to 2038-safe versions quickly. This might include
warnings when unsafe syscalls are used, or options to disable unsafe
syscalls, as well as maybe debug modes for testing where if you set the
date to past 2038, the kernel will be extra verbose if any truncated
absolute time_t values are observed (hinting that an application cast to a
long and back).

So what I=E2=80=99d like to cover in this mail, are some discussion starter=
s around
ABI modifications that I think we should discuss at Kernel Summit, in order
to make sure we have a clear path forward, as what we decide for the ABI
modifications, has large impacts on how we help ensure userspace is correct
or not.


>From discussions so far, it seems the preferred change to the userspace
interface is what I=E2=80=99ll call the =E2=80=9CLarge File=E2=80=9D method=
, as it follows the
approach used for large file support:

Create new 64bit time_t/timespec/timeval/etc variants for syscalls, while
preserving existing interfaces. This has some complexity around IOCTLs, but
that can mostly be handled by creating new ioctl numbers while preserving
the old ones. Since we=E2=80=99re only modifying time types, we=E2=80=99ll =
also need to add
compat versions for many of these syscalls for 64bit native systems.

Libc then introduces versioned symbols, and a new compile options to allow
applications to be built for =E2=80=9Clarge time=E2=80=9D. New and old appl=
ications could
then share the same libc.

The benefits of this approach is is simply and minimally extends the
current 32 bit environment, without any effect on existing applications
which continue to work. Most of the complexity is in the libc library and
its build environment.

The downsides to this approach is that as it follows the large-file
approach, it has many of the same problems as large-file support, in that
the transition to large-file has been slow and is still ongoing. Also,
since this solution focuses on libc, there is also the problem of existing
3rd party libraries, which have no way of knowing which sized time is being
used, will break. So all libraries that do anything with time will then
have to implement their own versioned interfaces. This approach also makes
it a little more difficult to audit that a system is 2038 safe, without
running it and looking for issues.


A potential alternative I=E2=80=99d like to also propose is the =E2=80=9CLi=
bc Version Bump=E2=80=9D
approach.

Basically this is the same as the above, where the kernel provides both
legacy and new time_t related interfaces. However, the libc would make a
version break, migrating to using 64bit time_t types and syscalls. Legacy
applications would still work using the old glibc version, but this would
provide a stronger line in the sand between 2038 safe and unsafe
applications and libraries, making it easier to avoid mixing the two.
NetBSD developers discussed this same approach back in 2008 here:
https://mail-index.netbsd.org/tech-userlevel/2008/03/22/msg000231.html

The downsides here is, for legacy application support, one would have to
have all the requisite legacy libraries also installed, which will add a
burden to distro vendors. However, this extra storage overhead would likely
be a positive motivator to get applications rebuilt and migrated to new
version. Additionally, for 3rd party libraries built against the new libc
version, the libraries may need to do a version bump themselves, in order
to be able to co-exist with versions built against the previous libc. This
approach also assumes that libraries that use time_t related values would
have a libc dependency.

A more aggressive version of the previous proposal is what I=E2=80=99m call=
ing the
=E2=80=9CNew Virtual-Architecture=E2=80=9D approach, basically extending th=
e versioning
control from the linker down into the kernel as well.  It would be adding a
new =E2=80=9Cvirtual-architecture=E2=80=9D to the kernel, not entirely unli=
ke how x32 is
supported on x86_64 systems.  We would create entirely new ABI and
architecture name in the kernel (think something like =E2=80=9Carmllt=E2=80=
=9D or
=E2=80=9Ci386llt=E2=80=9D). We would preserve compatibility for legacy appl=
ications via
personalities, similar mechanism as the compat_ interface used to support
32bit applications on 64bit kernels. In this case, we wouldn=E2=80=99t intr=
oduce
new 64 bit syscalls in the kernel, as the existing interfaces would just be
typed correctly for our new virtual architecture, but we would have
duplicate syscall interfaces via the compat interfaces. The extra
complexity would also be that we would have to support new 32bit compat
environment on 64bit systems. Userspace would be completely rebuilt to
support the new -llt architecture, and compatibility for legacy
applications would be done via the same multiarch packaging as is done now
for running 32bit applications on 64bit systems.

The pros for this case is that it would be very easy to audit that
applications have migrated to the new 64bit time_t ABI. Additionally since
we know which type the application is in the kernel, it would make
problematic compatability areas like IOCTLS easier to deal with utilizing a
flag in the task structure.

The downsides here are many. The distros will probably hate this idea, as
it requires rebuilding the world, and maintaining another legacy
architecture support. I=E2=80=99m also not completely sure how robust multi=
-arch
packaging is in the face of having to handle 3-4 architectures on one
system. On the kernel side, it also adds more complexity, where we have to
add even more complex compat support for 64bit systems to handle all the
various 32bit applications possible.

That said the practical reality isn't much further from the the =E2=80=9CLi=
bc
Version Bump=E2=80=9D approach, since legacy support will need legacy versi=
ons of
all dependent libraries there a well. Similarly the additional storage
required to support legacy applications is a positive motivator to get
folks to move away from unsafe legacy applications. I also personally like
the clarity the new virtual architecture brings, and that it would allow a
kernel option to disable 2038-unsafe legacy support.

With any of these approaches, we still have quite a bit of work to just get
the kernel in-shape internally. And with the exception of the =E2=80=9Cvirt=
ual
arch=E2=80=9D approach, the changes on the kernel side are basically the sa=
me. The
big thing we probably want to avoid is requiring any sort of flagday for
distros, and instead allowing them each to migrate to the new solution
individually (but hopefully not taking too long). Even so, I think having a
clear vision for how userspace will make this transition is important, so
hopefully during the Kernel Summit discussion we can come to consensus on
what approach to take moving forward.

Anyway, this is probably more then enough to read and think about in the
next week. I=E2=80=99d be very interested in further thoughts or alternativ=
e
proposals to discuss.

Thanks to Thomas Gleixner, Arnd Bergmann, Mark Brown, Joseph Myers and
others for their thoughts and proposals which I used to create this summary=
.

Also, Arnd has been keeping 2038 related details (most usefully on the
non-time_t 2038 concerns) on the kenrelnewbies wiki here:
http://kernelnewbies.org/y2038

thanks
-john

--001a11c1daf81dac9a0500777e6a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Next week at Kernel Summit, I&#39;m hoping to have a discu=
ssion on 2038 during one of the unconference slots, so I wanted to send out=
 some background information about the various proposed approaches (as well=
 as send this out for wider input, since apparently there won&#39;t be much=
 libc representation at KS).<br>
<br>
So 2038 brings the end of time for 32bit architectures. =C2=A0It being some=
 twenty four years ahead, it may seem like there is plenty of time for folk=
s to migrate to 64bit architectures that are (mostly) unaffected by this is=
sue. However, 32bit processors are still being produced today in extremely =
high volumes, and many of those systems are being used in commercial, indus=
trial and medical environments, where these systems may be quite literally =
embedded into the walls and machinery and are expected to run for 25 years =
or more. As these small systems become more and more pervasive, the risks o=
f major trouble in 2038 grow. And that=E2=80=99s to say nothing of the impa=
ct on future classic-car resale prices for fancy cars like the Tesla when t=
he high end in-dash display won=E2=80=99t work (gasp!).<br>


<br>Thus, the =E2=80=9Cjust upgrade to 64bit=E2=80=9D solution isn=E2=80=99=
t really sufficient, and we need to find a transition plan soon, which will=
 allow 32bit cpus being sold today and in the future to function correctly =
past 2038.<br><br>Other OSes have already started rolling out solutions. Ne=
tBSD switched to 64bit time_t in 2012, providing a compatibility layer for =
old applications. Then in 2013, OpenBSD switched its 32bit systems time_t t=
o use long long. You can read more about the OpenBSD transition here: <a hr=
ef=3D"http://www.openbsd.org/papers/eurobsdcon_2013_time_t/" target=3D"_bla=
nk">http://www.openbsd.org/papers/eurobsdcon_2013_time_t/</a>. One item to =
note is that NetBSD preserved compatibility with 2038 unsafe applications, =
while OpenBSD did not (seeing the certainty of excluding unsafe application=
s as a feature over compatibility). For Linux, we obviously want to maintai=
n compatibility, but I think its important we recognise we=E2=80=99re not t=
he first movers here, and many of the discussions we=E2=80=99ll be having h=
ave already been had in those communities. I also think we should be sure t=
o credit the NetBSD and OpenBSD devs for jumping in on this early and worki=
ng to ensure issues in the userspace applications we share are already addr=
essed.<br>


<br>Also, just to clarify, as time related discussions can bring out a laun=
dry list of issues, I would like to focus this discussion on providing a 20=
38 solution for existing interfaces and applications in a way that ideally =
doesn&#39;t require modifying application source code. =C2=A0While there wi=
ll be plenty of places where applications have cast or stored time_t values=
 explicitly as longs, and for those applications, deep modifications will b=
e necessary. But I=E2=80=99d like to avoid getting into new-interface discu=
ssions, like exporting ktime_t like nanosecond interfaces instead of timeps=
ecs, unifying time-stamping formats, or methods for avoiding leapseconds. T=
hose are all interesting issues, and I=E2=80=99d be up for discussing them =
separately, but those issue apply equally to 32bit and 64bit systems, and r=
eally aren&#39;t 2038 specific, so I think its best to separate them out.<b=
r>


<br>I think any solution to the 2038 issue for Linux, from the kernel=E2=80=
=99s perspective, will have a number of phases:<br><br>1) In-kernel correct=
ness: Making sure the kernel itself handles the 2038 rollover correctly. As=
 noted in LWN (<a href=3D"https://lwn.net/Articles/607741/" target=3D"_blan=
k">https://lwn.net/Articles/607741/</a>) this work has begun and portions h=
ave been merged. Personally, I don=E2=80=99t really see this as that intere=
sting of a discussion topic, and with the exception of dealing with externa=
l representations of time like on-disk filesystem formats, etc, it is for t=
he most part a matter of just going through, finding and fixing things (wit=
h a few extra complications around ioctls). Mostly this will revolve around=
 adding explicitly sized 64bit time_t types (and 32bit types for compatibil=
ity), and migrating in-kernel users over to the explicitly sized implementa=
tions, allowing us to validate conversion by eventually removing the in-ker=
nel time_t type, of course finding non-time_t custom storage uses will be a=
 long tail of work.<br>


<br>2) Userspace ABI modifications: This includes how we expose the new 64b=
it time_t and related structures to userland via syscalls and ioctls, and h=
ow we preserve compatibility to older applications. This is probably the mo=
st complex issue, as the different choices have large impacts to how the tr=
ansition in userspace is done.<br>


<br>3) Aiding in validating userspace correctness: While we want to preserv=
e compatibility, there is the very real aspect that 2038 unsafe application=
s (ie: almost all 32bit applications today) are terminally broken in 2038. =
While we can try to ensure that we don=E2=80=99t break those applications p=
rematurely, we do want to ensure folks using unsafe applications are aware =
and motivated to upgrade to 2038-safe versions quickly. This might include =
warnings when unsafe syscalls are used, or options to disable unsafe syscal=
ls, as well as maybe debug modes for testing where if you set the date to p=
ast 2038, the kernel will be extra verbose if any truncated absolute time_t=
 values are observed (hinting that an application cast to a long and back).=
<br>


<br>So what I=E2=80=99d like to cover in this mail, are some discussion sta=
rters around ABI modifications that I think we should discuss at Kernel Sum=
mit, in order to make sure we have a clear path forward, as what we decide =
for the ABI modifications, has large impacts on how we help ensure userspac=
e is correct or not.<br>


<br><br>From discussions so far, it seems the preferred change to the users=
pace interface is what I=E2=80=99ll call the =E2=80=9CLarge File=E2=80=9D m=
ethod, as it follows the approach used for large file support:<br><br>Creat=
e new 64bit time_t/timespec/timeval/etc variants for syscalls, while preser=
ving existing interfaces. This has some complexity around IOCTLs, but that =
can mostly be handled by creating new ioctl numbers while preserving the ol=
d ones. Since we=E2=80=99re only modifying time types, we=E2=80=99ll also n=
eed to add compat versions for many of these syscalls for 64bit native syst=
ems.<br>


<br>Libc then introduces versioned symbols, and a new compile options to al=
low applications to be built for =E2=80=9Clarge time=E2=80=9D. New and old =
applications could then share the same libc.<br><br>The benefits of this ap=
proach is is simply and minimally extends the current 32 bit environment, w=
ithout any effect on existing applications which continue to work. Most of =
the complexity is in the libc library and its build environment. <br>


<br>The downsides to this approach is that as it follows the large-file app=
roach, it has many of the same problems as large-file support, in that the =
transition to large-file has been slow and is still ongoing. Also, since th=
is solution focuses on libc, there is also the problem of existing 3rd part=
y libraries, which have no way of knowing which sized time is being used, w=
ill break. So all libraries that do anything with time will then have to im=
plement their own versioned interfaces. This approach also makes it a littl=
e more difficult to audit that a system is 2038 safe, without running it an=
d looking for issues.<br>


<br><br>A potential alternative I=E2=80=99d like to also propose is the =E2=
=80=9CLibc Version Bump=E2=80=9D approach. <br><br>Basically this is the sa=
me as the above, where the kernel provides both legacy and new time_t relat=
ed interfaces. However, the libc would make a version break, migrating to u=
sing 64bit time_t types and syscalls. Legacy applications would still work =
using the old glibc version, but this would provide a stronger line in the =
sand between 2038 safe and unsafe applications and libraries, making it eas=
ier to avoid mixing the two. NetBSD developers discussed this same approach=
 back in 2008 here: <a href=3D"https://mail-index.netbsd.org/tech-userlevel=
/2008/03/22/msg000231.html" target=3D"_blank">https://mail-index.netbsd.org=
/tech-userlevel/2008/03/22/msg000231.html</a><br>


<br>The downsides here is, for legacy application support, one would have t=
o have all the requisite legacy libraries also installed, which will add a =
burden to distro vendors. However, this extra storage overhead would likely=
 be a positive motivator to get applications rebuilt and migrated to new ve=
rsion. Additionally, for 3rd party libraries built against the new libc ver=
sion, the libraries may need to do a version bump themselves, in order to b=
e able to co-exist with versions built against the previous libc. This appr=
oach also assumes that libraries that use time_t related values would have =
a libc dependency.<br>


<br>A more aggressive version of the previous proposal is what I=E2=80=99m =
calling the =E2=80=9CNew Virtual-Architecture=E2=80=9D approach, basically =
extending the versioning control from the linker down into the kernel as we=
ll. =C2=A0It would be adding a new =E2=80=9Cvirtual-architecture=E2=80=9D t=
o the kernel, not entirely unlike how x32 is supported on x86_64 systems. =
=C2=A0We would create entirely new ABI and architecture name in the kernel =
(think something like =E2=80=9Carmllt=E2=80=9D or =E2=80=9Ci386llt=E2=80=9D=
). We would preserve compatibility for legacy applications via personalitie=
s, similar mechanism as the compat_ interface used to support 32bit applica=
tions on 64bit kernels. In this case, we wouldn=E2=80=99t introduce new 64 =
bit syscalls in the kernel, as the existing interfaces would just be typed =
correctly for our new virtual architecture, but we would have duplicate sys=
call interfaces via the compat interfaces. The extra complexity would also =
be that we would have to support new 32bit compat environment on 64bit syst=
ems. Userspace would be completely rebuilt to support the new -llt architec=
ture, and compatibility for legacy applications would be done via the same =
multiarch packaging as is done now for running 32bit applications on 64bit =
systems.<br>


<br>The pros for this case is that it would be very easy to audit that appl=
ications have migrated to the new 64bit time_t ABI. Additionally since we k=
now which type the application is in the kernel, it would make problematic =
compatability areas like IOCTLS easier to deal with utilizing a flag in the=
 task structure.<br>


<br>The downsides here are many. The distros will probably hate this idea, =
as it requires rebuilding the world, and maintaining another legacy archite=
cture support. I=E2=80=99m also not completely sure how robust multi-arch p=
ackaging is in the face of having to handle 3-4 architectures on one system=
. On the kernel side, it also adds more complexity, where we have to add ev=
en more complex compat support for 64bit systems to handle all the various =
32bit applications possible.<br>


<br>That said the practical reality isn&#39;t much further from the the =E2=
=80=9CLibc Version Bump=E2=80=9D approach, since legacy support will need l=
egacy versions of all dependent libraries there a well. Similarly the addit=
ional storage required to support legacy applications is a positive motivat=
or to get folks to move away from unsafe legacy applications. I also person=
ally like the clarity the new virtual architecture brings, and that it woul=
d allow a kernel option to disable 2038-unsafe legacy support. <br>


<br>With any of these approaches, we still have quite a bit of work to just=
 get the kernel in-shape internally. And with the exception of the =E2=80=
=9Cvirtual arch=E2=80=9D approach, the changes on the kernel side are basic=
ally the same. The big thing we probably want to avoid is requiring any sor=
t of flagday for distros, and instead allowing them each to migrate to the =
new solution individually (but hopefully not taking too long). Even so, I t=
hink having a clear vision for how userspace will make this transition is i=
mportant, so hopefully during the Kernel Summit discussion we can come to c=
onsensus on what approach to take moving forward.<br>


<br>Anyway, this is probably more then enough to read and think about in th=
e next week. I=E2=80=99d be very interested in further thoughts or alternat=
ive proposals to discuss.<br><br>Thanks to Thomas Gleixner, Arnd Bergmann, =
Mark Brown, Joseph Myers and others for their thoughts and proposals which =
I used to create this summary.<br>


<br>Also, Arnd has been keeping 2038 related details (most usefully on the =
non-time_t 2038 concerns) on the kenrelnewbies wiki here: =C2=A0<a href=3D"=
http://kernelnewbies.org/y2038" target=3D"_blank">http://kernelnewbies.org/=
y2038</a><div>

<br>thanks<br>
-john<br></div></div>

--001a11c1daf81dac9a0500777e6a--
