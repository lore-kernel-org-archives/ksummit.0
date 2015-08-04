Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EBE158EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:30:53 +0000 (UTC)
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 697101DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:30:53 +0000 (UTC)
Received: by obnw1 with SMTP id w1so8266343obn.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 07:30:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4555213.bCW3TZxWso@avalon>
References: <20150801164142.653012af@lwn.net> <6756795.jjv2YY7pQg@avalon>
	<CAKMK7uHgy5OO5QJRCRhWT2DRs+aoB5S=1Y_4_n7ODak8Qp5sMQ@mail.gmail.com>
	<4555213.bCW3TZxWso@avalon>
Date: Tue, 4 Aug 2015 16:30:52 +0200
Message-ID: <CAKMK7uGuNDGZr3H33+munD5LXLiTt-pzzYOrUc2WHR=N3F_LZg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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

On Tue, Aug 4, 2015 at 4:28 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>> > A good (or bad example, depending on how you see it) of this is the
>> > DRM/KMS documentation available from Documentation/DocBook/drm.tmpl. I
>> > spent a considerable amount of time writing it, it got reviewed, merged in
>> > the kernel, and has now been rendered completely useless as the DRM/KMS
>> > internal API has evolved and the documentation hasn't been updated
>> > despite my repeated requests. That was extremely demotivating, and made
>> > me give up documenting DRM/KMS at all.
>>
>> drm having gone downhill is why I want to pull it out of the template
>> into code. E.g. we have extensive docs for vtables, but since they're
>> not next to the vtables in the code no one updates those. And
>> duplicating a summary in kerneldoc and then the extended version in
>> the docbook is even worse imo.
>
> The problem is two-fold. Extensive vtables documentation is definitely good,
> but it mostly serves as API reference documentation. I believe we also need a
> guide type of documentation that goes through the bits and pieces drivers need
> in a logical order. That should of course be linked to the vtables reference
> documentation, but it should be a natural text flow type of documentation that
> driver developers can read from start to end, guiding them in the process of
> writing a DRM/KMS driver.

Oh the vtables is just the blocker why I didn't start this yet - I
really don't like the current duplication we have. Fully agreed that
we need overview docs to tie it all together and explain how it works.
With markdown we can even do inline code snippets, which should help a
lot with explaining how to use certain helper libraries.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
