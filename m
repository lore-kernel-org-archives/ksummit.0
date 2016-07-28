Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D112A7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 17:32:01 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 62FDD217
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 17:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 204EA8EE2F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:32:01 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id IhyUQSmZACOZ
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:32:01 -0700 (PDT)
Received: from [9.232.161.213] (unknown [129.33.253.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id A7F5D8EE1C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:32:00 -0700 (PDT)
Message-ID: <1469727119.2295.25.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 28 Jul 2016 13:31:59 -0400
In-Reply-To: <1469726963.2295.23.camel@HansenPartnership.com>
References: <1469726963.2295.23.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2016-07-28 at 13:29 -0400, James Bottomley wrote:
> I have been known to be OK with the occasional storage or obscure non
> -x86 architecture or even the occasional mm issues.
> 
> I'm principally interested in
> 
>  * Storage issues (not that these ever come up at the kernel summit)
>  * In kernel container technologies (gcroups, namespaces and how we
>    apply the granular virtualizations) since this has been one of my
>    foci for five years now.
>  * Security, keys and the TPM.  I'm mostly working on this above the
>    kernel for a more secure cloud environment, but this means I have a
>    lot of TSS and TPM knowledge and I'd love to share the pain ...

I suppose I should add that running a top level tree, I have an
interest in process issues.  I'd be somewhat interested in a stable
tree discussion but only really to make sure it doesn't increase my
maintainer workload ...

James
