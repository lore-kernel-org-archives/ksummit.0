Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E461A70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 22:50:19 +0000 (UTC)
Received: from namei.org (namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C8AF472
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 22:50:18 +0000 (UTC)
Date: Fri, 29 Sep 2017 08:50:12 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: ksummit-discuss@lists.linuxfoundation.org
In-Reply-To: <alpine.LRH.2.21.1709231416010.10766@namei.org>
Message-ID: <alpine.LRH.2.21.1709290833470.15742@namei.org>
References: <alpine.LRH.2.21.1709231416010.10766@namei.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Eric Biggers <ebiggers@google.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 23 Sep 2017, James Morris wrote:

> I'd like to propose a kernel security tech topic, where we can discuss 
> current development issues, with both core kernel folk and European 
> security developers who may not have attended LSS.
> 
> Potential agenda items include:
> 
> - KSPP update (Kees Cook)
> - TPM status (Jarkko, if available)
> - LSS & LPC container security discussion readout (myself)
> 
> And possibly other items depending on who is available at the conference, 
> and how much time is available for the topic.

Another potential topic would be whether we can provide better review of 
crypto users within the kernel.

One idea would be to create a mailing list for this purpose, which 
developers can cc: if they are posting new code or updates to code which 
uses the crypto API.  We could encourage folk with crypto design & 
analysis skills (who may not necessarily be kernel developers, or 
following every possibly related mailing list) to help out with crypto 
review.

It seems worth discussing, in any case.


-- 
James Morris
<jmorris@namei.org>
