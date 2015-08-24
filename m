Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16ECCB35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:50:51 +0000 (UTC)
Received: from namei.org (tundra.namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F6F4199
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:50:50 +0000 (UTC)
Date: Tue, 25 Aug 2015 04:50:46 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: Kees Cook <keescook@chromium.org>
In-Reply-To: <CAGXu5j+=b+EbciyJwr-eNmRVomdeZP4gkWXcfCQtEOEo=HYkAQ@mail.gmail.com>
Message-ID: <alpine.LRH.2.20.1508250450230.11872@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<87k2skzmhs.fsf@linux.vnet.ibm.com>
	<CAGXu5j+=b+EbciyJwr-eNmRVomdeZP4gkWXcfCQtEOEo=HYkAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 24 Aug 2015, Kees Cook wrote:

> Should we have a separate discussion for bug-hunting? KASan needs to
> expand its architecture coverage, Trinity needs a maintainer, and
> there's always new things happening with smatch and coccinelle.
> 
> I'd just like to keep bug-hunting entirely separate from
> self-protection, as I feel they're distinct topics (though related).

I agree -- this needs to be a separate, related discussion.


-- 
James Morris
<jmorris@namei.org>
