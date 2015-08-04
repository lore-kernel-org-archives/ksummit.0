Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4265989F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 13:07:19 +0000 (UTC)
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFF0519B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 13:07:18 +0000 (UTC)
Received: by oio137 with SMTP id 137so936522oio.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 06:07:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1576432.1WkRdFc7OG@avalon>
References: <20150801164142.653012af@lwn.net>
	<1438672367.9418.3.camel@ellerman.id.au>
	<1576432.1WkRdFc7OG@avalon>
Date: Tue, 4 Aug 2015 15:07:17 +0200
Message-ID: <CAKMK7uERsJFo5G_6bufpix6Y16kOFQcDQfszncY_v=mC8jNCGA@mail.gmail.com>
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

On Tue, Aug 4, 2015 at 2:54 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>> Yeah +1 from me on getting rid of DocBook.
>>
>> I looked at it a bit in terms of asking people to write docs, and decided it
>> was too painful to impose on people.
>
> I don't buy that. The hard part in writing quality documentation is the
> documentation, not the format. Sure, we can make formating easier, but no
> matter how good the brushes you give him are, a kindergarten kid won't become
> Picasso overnight.

Yeah let's please not just throw out tooling because we don't like the
color of the bikeshed. Afaik all the code documentation tools are
incompatible in slight ways, which means any change means someone gets
to fix up tons of little issues all over. And if you don't do that and
just add yet another doc system then it'll be even worse.

And like Laurent said presentation for docs is fairly irrelevant, it's
the content that matters. And as long as you can do basic doc
structure, linking and have a bit of markup you're good to go. And
there's very little we imo need to add to the existing
kerneldoc/docbook-template toolchain to get there. The patches are
also already written ...
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
