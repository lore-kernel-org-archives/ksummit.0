Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E80F9B05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:53:36 +0000 (UTC)
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A8C020250
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:53:36 +0000 (UTC)
Received: by mail-vc0-f171.google.com with SMTP id lc6so1877243vcb.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 11:53:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140507180315.GA926@srcf.ucam.org>
References: <20140507180315.GA926@srcf.ucam.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 7 May 2014 11:53:15 -0700
Message-ID: <CALCETrULGiH=Afoqu8W06x=e2EQr6v7t10OSgYdxdu3df__pTQ@mail.gmail.com>
To: Matthew Garrett <mjg59@srcf.ucam.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Trusted kernel patchset
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 7, 2014 at 11:03 AM, Matthew Garrett <mjg59@srcf.ucam.org> wrote:
> (Posting as core rather than tech because I suspect this is more
> political than technical at this point)
>
> Most major distributions ship these. There is strong demand from Google,
> who want to use them in a use-case that has nothing to do with UEFI
> Secure Boot. Making a distinction between root and kernel security is a
> necessary part of securing a boot chain[1].
>
> Yet, after apparently gaining at least a rough consensus at LPC last
> year, we're now at the point where there's yet another suggestion for
> how to rewrite them but absolutely nobody showing any signs of being
> willing to do that work or any agreement from anyone in the security
> community that entirely reworking capabilities is either practical or
> desirable.

I am very interested in this, both from the POV of how capabilities do
and/or should work, and of what trusted boot should do.

There is a lot of very vocal opposition to any change in the way that
capabilities work, and I think that, at some point, it might be
helpful if enough people who think that capabilities can change
reached some kind of consensus so that something can be done.

That being said, capabilities are a giant mess, and it might be really
hard to fix them.

--Andy
