Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C64A3AA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 21:35:17 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D22B62020C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 21:35:16 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: John Stultz <john.stultz@linaro.org>
Date: Wed, 13 Aug 2014 23:35:11 +0200
Message-ID: <1832675.rG7xa0ukNo@wuerfel>
In-Reply-To: <53EAAC95.7080301@linaro.org>
References: <53EAAC95.7080301@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: "Joseph S. Myers" <joseph@codesourcery.com>,
	lkml <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] (Resend) 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 12 August 2014 17:08:53 John Stultz wrote:

> Next week at Kernel Summit, I'm hoping to have a discussion on 2038 d=
uring
> one of the unconference slots, so I wanted to send out some backgroun=
d
> information about the various proposed approaches (as well as send th=
is out
> for wider input, since apparently there won't be much libc representa=
tion
> at KS).

Thanks a lot for doing the writeup. I've been on vacation the past two =
weeks,
so I couldn't really contribute much during that time, but a lot of wha=
t
you write here is what we discussed earlier in private.

> 1) In-kernel correctness: Making sure the kernel itself handles the 2=
038
> rollover correctly. As noted in LWN (https://lwn.net/Articles/607741/=
) this
> work has begun and portions have been merged. Personally, I don=E2=80=
=99t really
> see this as that interesting of a discussion topic, and with the exce=
ption
> of dealing with external representations of time like on-disk filesys=
tem
> formats, etc, it is for the most part a matter of just going through,=

> finding and fixing things (with a few extra complications around ioct=
ls).
> Mostly this will revolve around adding explicitly sized 64bit time_t =
types
> (and 32bit types for compatibility), and migrating in-kernel users ov=
er to
> the explicitly sized implementations, allowing us to validate convers=
ion by
> eventually removing the in-kernel time_t type, of course finding non-=
time_t
> custom storage uses will be a long tail of work.

Some more thoughts on how I think this can proceed:

I think the most important tool here is compile-time validation, by ens=
uring
no use of time_t or a derived structure (timespec, timeval, itimerspec,=
 ...)
can be compiled if you are building a kernel that you want to survive y=
2038.

Any drivers or file systems that we don't expect to need at that time
(e.g. ext2/3 rather than ext4) can keep using the unsafe interfaces
but will be disabled in Kconfig or removed from the code using #ifdef
in case we are building a 64-bit-time-only kernel.

> From discussions so far, it seems the preferred change to the userspa=
ce
> interface is what I=E2=80=99ll call the =E2=80=9CLarge File=E2=80=9D =
method, as it follows the
> approach used for large file support:
>=20
> Create new 64bit time_t/timespec/timeval/etc variants for syscalls, w=
hile
> preserving existing interfaces. This has some complexity around IOCTL=
s, but
> that can mostly be handled by creating new ioctl numbers while preser=
ving
> the old ones. Since we=E2=80=99re only modifying time types, we=E2=80=
=99ll also need to add
> compat versions for many of these syscalls for 64bit native systems.

Josh Triplett already brought up the point of introducing completely ne=
w
interfaces for some cases and having libc emulate the old calls. A vari=
ation
of this would be to not add any 64-bit version of syscalls that are alr=
eady
outdated. For example, we don't really need a 64-bit gettimeofday syste=
m
call, because we can easily implement it through clock_gettime.

I'd rather not introduce a 64-bit version of struct timeval if all sysc=
alls
using it already have a replacement using timespec.

> The downsides here are many. The distros will probably hate this idea=
, as
> it requires rebuilding the world, and maintaining another legacy
> architecture support. I=E2=80=99m also not completely sure how robust=
 multi-arch
> packaging is in the face of having to handle 3-4 architectures on one=

> system. On the kernel side, it also adds more complexity, where we ha=
ve to
> add even more complex compat support for 64bit systems to handle all =
the
> various 32bit applications possible.
>
> That said the practical reality isn't much further from the the =E2=80=
=9CLibc
> Version Bump=E2=80=9D approach, since legacy support will need legacy=
 versions of
> all dependent libraries there a well. Similarly the additional storag=
e
> required to support legacy applications is a positive motivator to ge=
t
> folks to move away from unsafe legacy applications. I also personally=
 like
> the clarity the new virtual architecture brings, and that it would al=
low a
> kernel option to disable 2038-unsafe legacy support.

As mentioned above, I think the last point is not unique to this approa=
ch,
we can and should have that option in any case.

Between the "large file" approach and the "libc version bump" approach,=

there doesn't have to be such a strict distinction. As you write, they
are the same from a kernel perspective, and I would expect most libc
implementations other than glibc (i.e. uclibc, bionic, newlib, musl, ..=
.)
to only support the second approach for practical reasons.

In case of glibc, the preferred approach seems to be the "large file"
method, which means that any function passing a time value will have
at least two versions. However, you should be able to build a glibc
binary that only supports the most recent version of these interfaces,
effectively dropping support for the old ABI.

At a distro level, anybody can make the decision when to stop supportin=
g
the old ABI independently: Gentoo can do this as an option as soon
as it works, while Debian can make a 10-year plan for a seamless
migration and Fedora can decide to dodge the problem by never even
enabling 64-bit time and just dropping support for 32-bit architectures=

at some point before 2038, following what RHEL7 already did.

Most importantly, the embedded distros that most care about really long=

term support (openembedded, buildroot, openwrt, ptxdist, ...) can just
drop 32-bit time_t entirely by switching the default to 64-bit time_t i=
n
a new source release, independent of whether glibc gives them the
option for backwards compatibility or not.

=09Arnd
