Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB573C433E0
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:19:19 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97EF220722
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:19:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="XWtOj3kU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97EF220722
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51FD6895C1;
	Tue,  7 Jul 2020 04:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sD9kP4tvyIPB; Tue,  7 Jul 2020 04:19:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79844895BB;
	Tue,  7 Jul 2020 04:19:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56D85C08A5;
	Tue,  7 Jul 2020 04:19:18 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC5D2C0891
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 617358543E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Cc6dEynChIc
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:17:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8216085485
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:17:48 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id o18so40758787eje.7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 21:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zYTy3waLkAM1ABF2vWyYrOhBD9lnFcrHQX68YskH13U=;
 b=XWtOj3kU8q/nU8kSfl3gtvSQ0lX/WPPcaajW3FlBA/UOfpjuxa55aw58aJUmSQ1KbP
 gi9ZdG4YzS91HUDzh+IvUsgz5ysUoz1SJh+GgfTjK9u31xPXtgAkQQRupWlIRnEL129+
 CH74fw5oAJyMhFjWb4yqn+gbfmdFxVRfu2cPiaj4xLb7fLdojIxhlyvg5i45rkdC+yFM
 NSkzzoaZuyWM2nZNHg3UU1AEJhVyEUOBClL1Kw1NqBCpJ1lGWtEHCtGfRAayFfOB/S19
 66bEWJacaXh8KQVAbsqyXZbTXq2QHVG5IzDLU4mFcXfRLUKr+pmZdo0pZNuwSBjpd6e4
 2bvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zYTy3waLkAM1ABF2vWyYrOhBD9lnFcrHQX68YskH13U=;
 b=m0bS6KK8M/mYIkWO0/Gf51c0EEANM8E3FijVu7awZD2MnJaWuru64rsLGSyMY/HTCe
 HmwZ1k2UTVt/2qIKJGGurUFQJr8tbrncQV9SCI/AX1v+DbYFxzRNiE7rgYKQX2/eg9DS
 G4zlnSks+j+hpiAMZ+Q5gHXamLmE7Y6JPqiC7ozXmeXmkWGWk9RZ4uTbJ5eVLfiXNiW9
 6adQD8vstid9r2YrnzKm6TBErmmQ/76f6kUN2Munmnl67RSol1D+Y9EvHSsb7qJStZUQ
 6LZddWyFSev8Tc0FHLUfVKR2WtKy9AOGMl9TXlcXS/q+ZxU3LjulsVjrAQijh73lo8yc
 BfRA==
X-Gm-Message-State: AOAM531VICgfYFCCA50IZT3dcQLjB+3qbFvym2bVJu6CaPnj5THfNWdl
 ubrrhP4/8UfL6N9YQTvUsSsDa4EPEg/kG8aDO7tWjQ==
X-Google-Smtp-Source: ABdhPJzsLvlVwtsyuyKqGLl/kTnW5SvfmDXSs+fEuBVHBXLqWJWD4hT1uqx/N0vUhdkRZ7VHgSc3uvd9dLQ3ZLrY9YA=
X-Received: by 2002:a17:906:b888:: with SMTP id
 hb8mr45453987ejb.124.1594095466811; 
 Mon, 06 Jul 2020 21:17:46 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705045505.GA2962@1wt.eu> <798B0FBF-D7A8-4631-8581-5D199DA50FF9@fb.com>
 <20200706160638.GG2999146@linux.ibm.com>
In-Reply-To: <20200706160638.GG2999146@linux.ibm.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jul 2020 21:17:35 -0700
Message-ID: <CAPcyv4jXJAYM7kQxzrv0AOhFGnN+=SOvhWxoJr6a09AnvF6cPg@mail.gmail.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>, Chris Mason <clm@fb.clm>,
 Willy Tarreau <w@1wt.eu>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

T24gTW9uLCBKdWwgNiwgMjAyMCBhdCA5OjA3IEFNIE1pa2UgUmFwb3BvcnQgPHJwcHRAbGludXgu
aWJtLmNvbT4gd3JvdGU6Cj4KPiBIaSBDaHJpcywKPgo+IE9uIE1vbiwgSnVsIDA2LCAyMDIwIGF0
IDEyOjQ1OjM0UE0gKzAwMDAsIENocmlzIE1hc29uIHZpYSBLc3VtbWl0LWRpc2N1c3Mgd3JvdGU6
Cj4gPiBPbiA1IEp1bCAyMDIwLCBhdCAwOjU1LCBXaWxseSBUYXJyZWF1IHdyb3RlOgo+ID4KPiA+
ID4gT24gU2F0LCBKdWwgMDQsIDIwMjAgYXQgMDE6MDI6NTFQTSAtMDcwMCwgRGFuIFdpbGxpYW1z
IHdyb3RlOgo+ID4gPj4gK05vbi1pbmNsdXNpdmUgdGVybWlub2xvZ3kgaGFzIHRoYXQgc2FtZSBk
aXN0cmFjdGluZyBlZmZlY3Qgd2hpY2ggaXMKPiA+ID4+IHdoeQo+ID4gPj4gK2l0IGlzIGEgc3R5
bGUgaXNzdWUgZm9yIExpbnV4LCBpdCBpbmp1cmVzIGRldmVsb3BlciBlZmZpY2llbmN5Lgo+ID4g
Pgo+ID4gPiBJJ20gcGVyc29uYWxseSB0aGlua2luZyB0aGF0IGZvciBhIG5vbi1uYXRpdmUgc3Bl
YWtlciBpdCdzIGFscmVhZHkKPiA+ID4gZGlmZmljdWx0IHRvIGZpbmQgdGhlIGJlc3QgdGVybSB0
byBkZXNjcmliZSBzb21ldGhpbmcsIGJ1dCBoYXZpbmcgdG8KPiA+ID4gYXBwbHkgYW4gZXh0cmEg
bGV2ZWwgb2YgZmlsdGVyaW5nIG9uIHRoZSBmb3VuZCB3b3JkcyB0byBmaWd1cmUgd2hldGhlcgo+
ID4gPiB0aGV5IGFyZSBhbGxvd2VkIGJ5IHRoZSBsYW5ndWFnZSBwb2xpY2UgaXMgZXZlbiBtb3Jl
IGRpZmZpY3VsdC4KPiA+Cj4gPiBTaW5jZSBvdXIgZGlzY3Vzc2lvbnMgYXJlIHB1YmxpYywgd2Xi
gJl2ZSBhbHdheXMgaGFkIHRvIGRlYWwgd2l0aAo+ID4gY29tbWVudHMgZnJvbSBwZW9wbGUgb3V0
c2lkZSB0aGUgY29tbXVuaXR5IG9uIGEgcmFuZ2Ugb2YgdG9waWNzLiAgQnV0Cj4gPiBpbnNpZGUg
dGhlIGtlcm5lbCwgaXTigJlzIGp1c3QgYSBncm91cCBvZiBkZXZlbG9wZXJzIHRyeWluZyB0byBo
ZWxwIGVhY2gKPiA+IG90aGVyIHByb2R1Y2UgdGhlIGJlc3QgcXVhbGl0eSBvZiBjb2RlLiAgV2Xi
gJl2ZSBnb3QgYSBsb25nIGhpc3RvcnkKPiA+IHRvZ2V0aGVyIGFuZCBpbiBnZW5lcmFsIEkgdGhp
bmsgd2XigJlyZSBwcmV0dHkgZ29vZCBhdCBhc3N1bWluZyBnb29kCj4gPiBpbnRlbnQuCj4KPiBJ
IGRvbid0IHRoaW5rIGFueWJvZHkgZG91YnRzIHlvdXIgaW50ZW50aW9ucy4gQnV0IHRoZXkgc2F5
LCB0aGUgcm9hZCB0bwo+IGhlbGwgaXMgcGF2ZWQgd2l0aCBnb29kIGludGVudGlvbnMuCj4KPiBJ
IGhhZCBhICJwcml2aWxlZ2UiIHRvIGxpdmUgaW4gdGhlIFVTU1IgYW5kIGJhY2sgdGhlcmUgTmV3
c3BlYWsgd2FzIG5vdCBhCj4gZmljdGlvbiBidXQgYSByZWFsaXR5Lgo+Cj4gQW5kIGRlc3BpdGUg
dGhlIGdvb2QgaW50ZW50LCBJIGhhdmUgYSByZWFsbHkgc3Ryb25nIGZlZWxpbmcgdGhhdCB0aGlz
Cj4gY291bGQgYmUgYSBzdGVwIGluIGEgd3JvbmcgZGlyZWN0aW9uLi4uCgpJJ3ZlIGV4cGVyaWVu
Y2VkIHNvbWUgcHJvZmVzc2lvbmFsIHRyYWluaW5nIGNsYXNzZXMgZm9yIHZpc2l0aW5nIG90aGVy
CmNvdW50cmllcyBhbmQgdGhleSB0ZWxsIHlvdSBoZWxwZnVsIHRoaW5ncyBsaWtlICJhdm9pZCBt
YWtpbmcgam9rZXMKYWJvdXQgWCIgb3IgIlkgdG9waWMgaXMgc2Vuc2l0aXZlIi4gSXQncyBub3Qg
YWJvdXQgY2Vuc29yaW5nIGl0J3MgbW9yZQphYm91dCBob3cgdG8ga2VlcCBkaXNjdXNzaW9uIGZv
Y3VzZWQgb24gdGhlIGpvYiBhdCBoYW5kLiBTbyBJJ20gaG9waW5nCnRoaXMgaXMgbW9yZSBvZiB0
aGUgbXVuZGFuZSBhZHZpY2Ugb2YgIndoYXQncyB0aGUgYmVzdCB3YXkgdG8KY29tbXVuaWNhdGUg
bXkgcG9pbnQgZWZmaWNpZW50bHkgdG8gdGhlIHdpZGVzdCBwb3NzaWJsZSBhdWRpZW5jZSIgYW5k
Cm5vdCBhICJzdGVwIGluIGEgd3JvbmcgZGlyZWN0aW9uIi4uLiB0aW1lIHdpbGwgdGVsbC4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNj
dXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9y
ZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3Vt
bWl0LWRpc2N1c3MK
