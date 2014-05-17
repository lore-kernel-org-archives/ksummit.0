Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 28A624D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 15:03:08 +0000 (UTC)
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21F89201CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 15:03:02 +0000 (UTC)
Received: by mail-wg0-f50.google.com with SMTP id x12so6239660wgg.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 08:03:01 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Message-ID: <53777A1E.40109@linux.com>
Date: Sat, 17 May 2014 17:02:54 +0200
From: Levente Kurusa <levex@linux.com>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>
References: <20140512164921.GB3509@linux.com>	<53710053.4040100@zytor.com>	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>	<20140513112525.GB10733@kroah.com>	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>	<20140513150520.GA15857@kroah.com>	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>	<20140513160743.GA11391@thunk.org>	<CA+5PVA5fun_4d3N57TPnV4uczG2rCQpGk-d8KYR92t4Xju0a8A@mail.gmail.com>	<20140515170138.GC2599@linux.com>
	<CA+5PVA7O-vTwYVLCMvOjqd9dp6fPhixd2b0XLfO1M+zHfGrr=w@mail.gmail.com>
In-Reply-To: <CA+5PVA7O-vTwYVLCMvOjqd9dp6fPhixd2b0XLfO1M+zHfGrr=w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="qXVuBoFvHhR9OpX382AIFw4h49jL2IJoD"
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>, Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
Reply-To: Levente Kurusa <levex@linux.com>
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--qXVuBoFvHhR9OpX382AIFw4h49jL2IJoD
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On 05/15/2014 07:11 PM, Josh Boyer wrote:
> On Thu, May 15, 2014 at 1:01 PM, Levente Kurusa <levex@linux.com> wrote=
:
>> Hi,
>>
>> On Tue, May 13, 2014 at 09:14:48PM -0400, Josh Boyer wrote:
>>> On Tue, May 13, 2014 at 12:07 PM, Theodore Ts'o <tytso@mit.edu> wrote=
:
>>>> I'll note this discussion has started mutating to a more general "ho=
w
>>>> do we get more useful bug reports in front of developers", which I
>>>> think is a good thing.
>>>
>>> Yes, agreed.
>>>
>>>> However, I'm still not sure how useful it would be to have a tech
>>>> topic (or a core topic) dedicated to the matter, because we've had
>>>> discussions about and at the end of the day, what's probably really
>>>> necessary is to have someone, or a small team, dedicated all or most=

>>>> of their time to:
>>>>
>>>> a) improving kerneloops.org
>>>> b) finding interesting patterns in the bulk reported data, and then
>>>> forwarding that on to developers
>>>> c) finding ways of automating (b)
>>>
>>> I think that's not really the full answer.  Having that setup would
>>> certainly be beneficial, but it ignores the time delay required to
>>> both 1) actually get kernel releases to large numbers of users, and 2=
)
>>> find said interesting patterns.
>>>
>>> The number of users testing the latest kernel release is certainly
>>> more today than ever, but the bulk of users are still using distro
>>> kernels.  Even with Fedora, Arch, and other distros rebasing rather
>>> quickly, we are still looking at that kernel release hitting the user=

>>> base after the merge window is closed for the next version already
>>> (N+1).  That means the upstream kernel developers are off developing
>>> for the release after (N+2).
>>>
>>> So if a large number of users starts hitting bugs in version N, and
>>> the upstream developers are already working on changes for N+2,
>>> waiting for interesting patterns to develop is actually increasing th=
e
>>> "cost" to the developers to go back and look at code they did 2
>>> releases ago.  The typical response is "does this recreate on Linus'
>>> latest tree or some subsystem git tree", which is N+1 in this case.
>>> It's a fair request from a developer's perspective, but it's not as
>>> simple for an end user or distro.  Often times they'll try N+1 and hi=
t
>>> a different bug on their system, making it even more confusing to try=

>>> and work the original report to conclusion.  (That appears to be Dave=

>>> Jones' life in a nutshell with trinity reports at the moment, so it's=

>>> not just Aunt Tillie either.)
>>>
>>> Often times the bugs are still in N+1 as well, so it's certainly
>>> helpful to report either way.  The areas where we tend to see this
>>> problem aren't in core MM or VFS code, but more in things like
>>> backlights, GPU drivers, wireless drivers, etc.  These aren't trivial=

>>> areas to debug or git bisect (which is a nightmare to work and end
>>> user through).  They are also the same areas where we depend on
>>> end-user testing and reporting because of the huge amount of
>>> variability in the hardware itself.  E.g. a change to fix something i=
n
>>> i915 on one machine/chipset seems to inevitably break a different
>>> machine/chipset.
>>
>> One thing I would add is if a user actually reports a bug on Bugzilla
>> often times they are able to do a git bisect. What I have observed is
>> that less tech-savvy people don't even bother with trying to report
>> the bug nor they would try to do anything to fix it if the bug isn't
>> that fatal. Of course, ABRT and the like has improved the number of
>> quality bug reports, but there still exists a number of fatal bugs
>> that with which we remain less informed.
>=20
> Working daily in Fedora bugzilla would lead me to politely disagree
> with you.  Or perhaps note that ABRT is leading to more bug reports,
> but less technically inclined users that find bisect confusing.  Even
> some of the more technically inclined users tend to ask for pre-built
> RPMs for bisect purposes, which isn't particularly easy.

I guess that more critical issues are reported by more people and chances=

are there is at least one who is capable enough to do a bisect. Less
critical issues might go un-bisected, but I guess that is what people cal=
l
'collateral damage'.

>=20
>> Naturally a question arises. How could get technically not-so-capable
>> people to report bugs? I guess QR codes have become so mainstream
>> nowadays, that they can provide a solution. What I see nowadays is
>=20
> Maybe.  I've yet to see people actually use QR codes for anything, but
> the technology certainly exists.

Well, here in Hungary, these QR codes started to in quite a few places.
Today, I saw it on a restaurant's menu, and it forwarded me to a link
where I could see the particular food from any viewpoint. It also
appeared on the back of vehicles, on TV commercials and a lot of other
places.

>=20
>> that when people see a QR code, they almost automatically try to scan
>> it. Not to mention when they have nothing else to do as with a kernel
>> crash. :-)
>=20
> We live in amazingly different worlds.

It could be that I am surrounded by tech-savvy people, but it's certainly=

getting mainstream.

>=20
> Anyway, my side discussion was not intended to discourage the QR code
> progress.  By all means, those interested should pursue that because
> anything helps.

Right.

>=20
>>> I realize QR codes, kerneloops.org, and things of that nature aren't
>>> going to solve this problem.  That's kind of why I'd like to see it
>>> discussed more broadly, and not assume that it can be automated away.=

>>> I'm just concerned that the rate of development today is outpacing ou=
r
>>> ability to get the releases into user's hands and get valid and usefu=
l
>>> bug reports from them.
>>
>> Indeed, by the time the people's favourite distro rebases, we are
>> already working on a new release. This mostly does not tend to be
>> a very bad delay with bleeding-edge distros like Arch and Fedora,
>> but what I am concerned of is what happens with the conservative
>> distros like Debian. AFAIK, the latest version of Debian is still
>> shipping the 3.2 stable kernel. If we start receiving reports from the=

>> 3.2 kernel, which is N-13 at the moment, then chances are the reports
>> are less useless, since the subsystems have evolved so much since 3.2.=

>=20
> Right.  Debian is probably the "worst" case scenario here, because
> they use a very old kernel but aren't in the same position as the
> other users of old kernels, which are the big Enterprise vendors.  The
> EL kernels have lots of staff to deal with this problem, so I'm kind
> of excluding them from this aspect of the conversation, but Debian is
> certainly impacted.

=2E.. and this won't be fixed by QR codes or anything that reports bugs I=

guess, since those reports might be only useful to the stable maintainers=
=2E
Other maintainers can not be made to remember their code in a way that al=
lows
triaging bugs in version N-13 or so...


Thanks,
    Levente Kurusa


--qXVuBoFvHhR9OpX382AIFw4h49jL2IJoD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBAgAGBQJTd3oiAAoJELBqK2lO9dZBt6UH/RZ5WDGs9vuaHOXj4Z84Mti0
wucRRqP505HQlM4OgeCA5QacJVwr43BfPBl7X9D9I/1f+XiXH7etgggq2C3R4aQc
xy7ROjsSq48mEWc2GjPp2CK5o4/i71oBEYPbeYuQPiXPsYn7GrwBQ4TVqdjopUXK
ux1EmwcNBnxwLnumErlfmZ9xgh/apjYngPyxZMtEEgSKJp8/AZZR3u5G86cmYpde
WsKwg5XiHDbFX6SWX8/81+tJP8gr/Vmo1rUUQKum6rlVdG1iye6iJrK8S1k9s9f4
wzAy1qi2a1OTtFe09Y7NdrWG6+qUJkypbOgosY3W3K4XRutb+JZLiLLnMxYbipI=
=3Gye
-----END PGP SIGNATURE-----

--qXVuBoFvHhR9OpX382AIFw4h49jL2IJoD--
