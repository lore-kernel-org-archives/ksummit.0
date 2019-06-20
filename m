Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C67ADAD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 19:28:29 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64F6D7ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 19:28:29 +0000 (UTC)
Date: Thu, 20 Jun 2019 13:28:27 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20190620132827.100dc970@lwn.net>
In-Reply-To: <201906201134.1C6068BF18@keescook>
References: <20190612085405.6045d95d@lwn.net>
	<201906201134.1C6068BF18@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 20 Jun 2019 11:36:38 -0700
Kees Cook <keescook@chromium.org> wrote:

> Just to put it into this thread... I've seen a recurring request for
> markup improvement to have Sphinx be smart enough to linkify:
> 
> 	function()
> 
> instead of needing to do:
> 
> 	:c:func:`iounmap()`

I already have a patch to do that:

	https://lwn.net/ml/linux-doc/20190425200125.12302-1-corbet@lwn.net/

It needs another bit of attention before it's ready, and I've not yet
managed to do that.  Soon, I promise :)

Thanks,

jon
