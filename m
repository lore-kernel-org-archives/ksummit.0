Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 964BE13F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:16:20 +0000 (UTC)
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D4D5F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:16:20 +0000 (UTC)
Received: by mail-it0-f43.google.com with SMTP id d10-v6so31868591itj.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:16:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180910213019.GB2579@localhost>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm>
	<CAOesGMjoe3XGeAoLhVpY2a-8q0Pgvc2bt9Dt58MYx=ZTuKHZTQ@mail.gmail.com>
	<2789743.8CivUegSaj@avalon> <20180910213019.GB2579@localhost>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 11 Sep 2018 01:16:18 +0200
Message-ID: <CAKMK7uFZzx_Q4h9uf-e3_n1_+-NiToBe1HS-p96gKWaMo7SO+w@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 11:30 PM, Josh Triplett <josh@joshtriplett.org> wrote:
> On Mon, Sep 10, 2018 at 10:59:26PM +0300, Laurent Pinchart wrote:
>> One of the issues here is that patch series don't have fixed boundaries over
>> their lifetime, the same way patches don't. A patch can evolve in scope from
>> version to version, and similarly so can a patch series. It's not uncommon for
>> patches to be dropped or added and for series to be split or merged. I've in
>> the past incorporated part of an RFC patch series in the v1 of a series with a
>> larger scope (after discussing it with the original developer of course).
>
> I do have some tools and algorithms that could be adapted to help
> cross-match patch series and show how they evolve over time. It isn't
> that hard to detect patch reordering and show interdiffs between
> corresponding patches. Extending that to match patches between series
> isn't much harder.

Is that built on top of the new git range-diff tool, or at least that
concept? Or something else?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
