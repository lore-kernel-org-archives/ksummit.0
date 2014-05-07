Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A014AF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:14:11 +0000 (UTC)
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 63E402026E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:14:10 +0000 (UTC)
Received: by mail-ob0-f179.google.com with SMTP id gq1so1676293obb.24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 11:14:09 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20140507180315.GA926@srcf.ucam.org>
References: <20140507180315.GA926@srcf.ucam.org>
Date: Wed, 7 May 2014 14:14:09 -0400
Message-ID: <CA+5PVA6W1ffAq6EsEQS7LfJm7oJxVbmKiGh2bWW+kTL4JDyFTQ@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Matthew Garrett <mjg59@srcf.ucam.org>
Content-Type: text/plain; charset=ISO-8859-1
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Trusted kernel patchset
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 7, 2014 at 2:03 PM, Matthew Garrett <mjg59@srcf.ucam.org> wrote:
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
>
> It'd be nice to have this done before August, but given that all
> previous attempts to actually get it unblocked on mailing lists have
> failed maybe we should talk about it in person. Again.

I think it's fairly obvious I'd like to attend this.  Other suggested
people would be:

James Bottomley
James Morris
Kees Cook
Joey Li
Gary Lin
Vojtech Pavlik

josh
