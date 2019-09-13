Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F2DC49ED7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 14:59:17 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B218920830
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 14:59:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nIkoamXc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B218920830
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 44C34B6D;
	Fri, 13 Sep 2019 14:59:16 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9246FB4B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 14:59:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B12E7D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 14:59:14 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z12so3837839pgp.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 07:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fbWWNj6jxXYYNBiMWtbkbdqPv5Uo41BE2vW7jgQy9yM=;
	b=nIkoamXcdsZgqEDTMxSqZfXHWqb/2CXWw7STkZmWdv8GqMUcvweldqkTMGBQz104F3
	FO0h6Mfm2ALayhSV8nduPsSc/oNNmBiH0lZf3CYwWH9J5pIgJcKC7A1ERXtTwWfNM5vS
	W4uUY9OU2+vCEv3l+nsh91zBSCtT6QKyHoHhkL3OFo41L1wU1LSfge1JQM4yoRgpnLoh
	GWNZs67+6bb0jJTufFw1oiCeuhguIoFtgQvVBRjo11Jw8iKV1wTL+mNuHNFH/h5lT4Ph
	dlPXuyttHqMt17OcBfmaJ2gSnyJrUgnrttFsRn/IIw9ifrS8he6SBdcpWRgoPHx76W6r
	pvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fbWWNj6jxXYYNBiMWtbkbdqPv5Uo41BE2vW7jgQy9yM=;
	b=gOr44cifaZG6sBVUtOGlhnKWbKX7DaJHCh/Y3B3QP1B6vOGU0Si43rJRiiNbIAsBcx
	wc9TN0M/PuP/JAnBWgysJKDFFgLh0UdgOtbmE3sDjtbZiVm3RlKWQiK6NENvf0/ps7DG
	SfNhSfs+RGMhjI6J2PnSXTtAZz/YGe7ltCGSl38IOG0l7qwrKXlmR+RIFpnU06/8YXyJ
	/lcf5Q8OqtR59vTP57XQgUxZ/LyaPMiPFCyajYfb6NR7eqFStwhmQaPMX1WrasqwLDuH
	bff9kHmWumygaqI9e76DlhnY/aeOkTuxo3XaOKpdWY44+KNjHiV4Zdc4J/RMVYbEiu/d
	TGYQ==
X-Gm-Message-State: APjAAAXeLSr+Cv4mW9MaVX28ERkRmERGt9V+LCPU+sePSg6KB7ZOpZu3
	PgHwHcTZ325pAL13AKHSOv8=
X-Google-Smtp-Source: APXvYqw+hH/klJhUfGJZPpZyFTdzWL2P0k9B3pz/IyxTU+dkOaVThfbCWMZT0Twl9NzNad28EY13Kw==
X-Received: by 2002:a62:e21a:: with SMTP id a26mr57031115pfi.156.1568386753921;
	Fri, 13 Sep 2019 07:59:13 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
	by smtp.gmail.com with ESMTPSA id
	s76sm27192710pgc.92.2019.09.13.07.59.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Sep 2019 07:59:12 -0700 (PDT)
Date: Fri, 13 Sep 2019 07:59:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <20190913145911.GA21121@roeck-us.net>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
	<CAFhKne8Nbk=OnZO_pqPURneVtxcHqbfkH+xJBrAYfCfsntfQ2g@mail.gmail.com>
	<20190913105446.2b7af558@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913105446.2b7af558@coco.lan>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Dave Jiang <dave.jiang@intel.com>, Bart Van Assche <bvanassche@acm.org>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Steve French <stfrench@microsoft.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Sep 13, 2019 at 10:54:46AM -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 13 Sep 2019 08:56:30 -0400
> Matthew Wilcox <willy6545@gmail.com> escreveu:
> 
> > It's easy enough to move the kernel-doc warnings out from under W=1. I only
> > out them there to avoid overwhelming us with new warnings. If they're
> > mostly fixed now, let's make checking them the default.
> 
> Didn't try doing it kernelwide, but for media we do use W=1 by default,
> on our CI instance.
> 

I used to do that as well, but gave up on it since it resulted in lots
of warnings from generic kernel include files. I have not tried recently,
so maybe that is no longer the case.

> There's a few warnings at EDAC, but they all seem easy enough to be
> fixed.
> 

Acceptance depends on the maintainer, really. I had patches rejected
when trying to fix W=1 warnings, so I no longer do it.

> So, from my side, I'm all to make W=1 default.
> 
Seems to me that would require a common agreement that maintainers
are expected to accept fixes for problems reported with W=1.

Guenter

> Regards,
> Mauro
> 
> > 
> > On Thu., Sep. 12, 2019, 16:01 Bart Van Assche, <bvanassche@acm.org> wrote:
> > 
> > > On 9/12/19 8:34 AM, Joe Perches wrote:  
> > > > On Thu, 2019-09-12 at 14:31 +0100, Bart Van Assche wrote:  
> > > >> On 9/11/19 5:40 PM, Martin K. Petersen wrote:  
> > > >>> * The patch must compile without warnings (make C=1  
> > > CF="-D__CHECK_ENDIAN__")  
> > > >>>   and does not incur any zeroday test robot complaints.  
> > > >>
> > > >> How about adding W=1 to that make command?  
> > > >
> > > > That's rather too compiler version dependent and new
> > > > warnings frequently get introduced by new compiler versions.  
> > >
> > > I've never observed this myself. If a new compiler warning is added to
> > > gcc and if it produces warnings that are not useful for kernel code
> > > usually Linus or someone else is quick to suppress that warning.
> > >
> > > Another argument in favor of W=1 is that the formatting of kernel-doc
> > > headers is checked only if W=1 is passed to make.
> > >
> > > Bart.
> > >
> > > _______________________________________________
> > > Ksummit-discuss mailing list
> > > Ksummit-discuss@lists.linuxfoundation.org
> > > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> > >  
> 
> 
> 
> Thanks,
> Mauro
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
