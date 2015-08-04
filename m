Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BCB887A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 11:09:39 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AD5D16A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 11:09:38 +0000 (UTC)
Received: by oibv126 with SMTP id v126so3072863oib.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 04:09:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150801164142.653012af@lwn.net>
References: <20150801164142.653012af@lwn.net>
Date: Tue, 4 Aug 2015 13:09:37 +0200
Message-ID: <CAKMK7uFsE1HkmmAU1J-9ZtHfAG1iUGjb8H4z6U1LR4goFgfV9g@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 1, 2015 at 4:41 PM, Jonathan Corbet <corbet@lwn.net> wrote:
>
> We have some interesting proposals for improvements on the DocBook side,
> including integrating Markdown support
> (http://thread.gmane.org/gmane.linux.documentation/32140) and allowing
> embedded DocBook comments within structs
> (https://lwn.net/Articles/653194/).  I think they both have merit, but I
> hesitate to take them for a couple of reasons.
>
> One is that changes in how docs are done would be imposed on everybody who
> is interested in keeping up the docs.  They also can, in a sense, look like
> coding-style changes, which is an area where I fear to tread on my own.
> The other is that I wonder if we want to consider a bit of a more sweeping
> overhaul.
>
> I am not convinced that DocBook is really the right tool for the job
> here.  It is complex, finicky, and it's a real pain to have to replace an
> entire laptop because you've worn out your shift key.  It is, I believe, an
> impediment to improvements to our docs in general.  If, instead, we used
> something more plain-text-like, I think life might get a lot easier; it
> could also enable the integration of all of our docs into something a bit
> more cohesive.

The entire point of all the work Danilo's been doing is being able to
pull out _all_ the actual text from the DocBook templates and move
them into the code. The docbook template will simply be the
scaffolding that pulls it all together and gives it the overall
structure. That gives you:
- almost no xml to edit
- documentation as plain-text with markdown
- documentation always right next to the code

Especially the last one is crucial from my experience documenting the
userspace side of the i915 driver. And the overall structure is also
really important since a pile of linked chapters is a really good way
for new people to dig into your docs. The pile of text files in
Documentation imo fails badly at that, even if it would look prettier
by using markdown, since if you don't know where to look you'll never
find related bits of documentation. Crosslinking is key for useable
docs imo, hence that's the first thing Danilo added.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
