Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07F2894F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:00:10 +0000 (UTC)
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AA6A276
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:00:08 +0000 (UTC)
Received: by mail-oi0-f68.google.com with SMTP id d204so7780135oig.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 08:00:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 29 Jul 2016 17:00:06 +0200
Message-ID: <CAKMK7uF5ZVi_5m1_Fp6GR6YoC-4eiKuLmx4GtOAxiJOXWZF5RQ@mail.gmail.com>
To: Christoph Lameter <cl@linux.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 4:21 PM, Christoph Lameter <cl@linux.com> wrote:
> On Fri, 29 Jul 2016, David Howells wrote:
>
>> Josh Triplett <josh@joshtriplett.org> wrote:
>>
>> > Note that git-series doesn't provide a quilt-style push/pop workflow,
>> > with applied and unapplied patches; it just looks at HEAD.
>>
>> Ah...  In that case it's probably not a sufficient substitute for how I use
>> stgit.
>
> Did not know that there was stgit. Still stuck on quilt since
> I like editing the files directly (its often easier to edit the diffs if
> you want to rename things etc).
>
> Interesting projects.

Shameless plug of our own tooling for maintainer a quilt pile and
tracking it in git:

https://cgit.freedesktop.org/drm-intel/tree/qf?h=maintainer-tools

It even tracks the baseline sha1 and pulls/pushes it in hidden remote
refs/. Which all together allows you to git bisect on the quilt
branch, which is a really powerful thing for a long-lived rebasing
patch pile. quilt+git was the only thing that allowed me to glue
something git bisect capable together.

And the other reason is the same you have: Editing raw patches is
really powerful for doing rebases over mechanical changes. Function
renames become a trivial quilt pop -a ; sed; while quilt push ; do
make ; done.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
