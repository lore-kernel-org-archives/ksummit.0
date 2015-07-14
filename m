Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E7D7AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 11:19:27 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C3A5F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 11:19:26 +0000 (UTC)
Received: by oige126 with SMTP id e126so4157561oig.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 04:19:25 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.vetter@ffwll.ch
In-Reply-To: <3864713.ag1RzhZSqr@avalon>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<201507132146.47186.PeterHuewe@gmx.de>
	<20150713203647.1fdb8bb4@lwn.net> <3864713.ag1RzhZSqr@avalon>
Date: Tue, 14 Jul 2015 13:19:25 +0200
Message-ID: <CAKMK7uHsQqEg8V4JOgoL3K+G89RtH0-4r3OhA88vqrE8Cs9LdQ@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 14, 2015 at 10:40 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> (CC'ing Daniel Vetter)
>
> On Monday 13 July 2015 20:36:47 Jonathan Corbet wrote:
>> On Mon, 13 Jul 2015 21:46:46 +0200 Peter H=C3=BCwe wrote:
>> > > kerneldoc does work, after a fashion.  It works well enough that peo=
ple
>> > > use it, and I hear about it quickly when somebody's comment change
>> > > breaks the docs build.  I don't think we can remove it in the absenc=
e of
>> > > something better.
>> >
>> > Jonathan, do you keep an up-to-date copy of the generated files somewh=
ere?
>> > (I cannot get it to work out of the box on my machine)
>>
>> I don't, sorry.  That would probably be a good thing for me to do for a
>> number of reasons.
>>
>> > > Creating "something better" is actually on my list of things to do. =
 The
>> > > only problem is that I've had to buy a second 4TB drive to hold that
>> > > list, so I don't know when I'll have time to think about it.
>> >
>> > Where do you think are the major issues from your point of view?
>>
>> Well, as mentioned before, kerneldoc is fragile.  A little while back
>> somebody changed a struct to a union without updating the comments to
>> match; that was enough to break the entire document build process.  That
>> kind of thing happens a lot; I don't think it should have to be that way=
.
>>
>> Beyond that, DocBook is a major pain.  I get a fair number of patches
>> along the lines of "that </para> should really have been ahead of that
>> </whatever>".  It's verbose, intimidating to newcomers, and causes more
>> worn-out shift keys than anything else.  We don't need something with th=
e
>> complexity of DocBook; something closer to Markdown or ReST would do us
>> just fine and make the documentation much more accessible.
>>
>> But making any such change is a big job, and convincing the community to
>> go with a change in tooling is probably a bigger job.  So I'm not rushin=
g
>> into it.
>>
>> > Would doxygen be "something better"? The kernel-doc style looks alread=
y
>> > quite similar. Maybe the kernel should not reinvent everything :)
>>
>> Doxygen may be worth a look.  I'm personally fond of Sphinx, though I
>> still haven't done a big project in it.
>>
>> But this is all just dreaming until somebody has the time to do a major
>> docs overhaul and sell it to everybody else.  Until then, I'm focused on
>> slowly improving what we have now...
>
> Daniel, I think I recall you mentioning some efforts going in that direct=
ion.
> Any update ?

We're contracting collabora (Daniel is working on it, cc'ed) to pimp
the kerneldoc toolchain for us:
- hyperlink functions/structures in the generated docbook
- add markdown support for kerneldoc paragraphs so that you can do
lists, basic formatting and tables

That's the basics I really need, whith that we can probably move all
the text sections from the drm docbook into the code. On top of that
there's a few wishlist items:
- allow to split up per-member sections for long structs (especially
useful for vtable structs where you want some longer text per each
function)
- asciiart or something (box model of drm planes/crtcs isn't the simplest t=
hing)

We do use other stuff in userspace which is orders of magnitude better
than kerneldoc, but kerneldoc+docbook template has intertia. At least
in drm-land, and that's why I decided it's better to stick with it.

My longer-term goal is to fully document drm and i915 internals using
this, to help us bring new engineers up to speed faster. We have a
massive problem with training in that area in drm/i915. I'm also
trying to get a dedicated tech writer to keep all the drm docs written
by various people consistent. Plan is to do that once the kerneldoc
tooling is in more useful shape.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
