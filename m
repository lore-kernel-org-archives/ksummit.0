Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56447A67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 18:36:41 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0726A7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 18:36:40 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id 196so2018779pgc.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jun 2019 11:36:40 -0700 (PDT)
Date: Thu, 20 Jun 2019 11:36:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <201906201134.1C6068BF18@keescook>
References: <20190612085405.6045d95d@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190612085405.6045d95d@lwn.net>
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

On Wed, Jun 12, 2019 at 08:54:05AM -0600, Jonathan Corbet wrote:
>  - Things we'd like to improve in the documentation toolchain.

Just to put it into this thread... I've seen a recurring request for
markup improvement to have Sphinx be smart enough to linkify:

	function()

instead of needing to do:

	:c:func:`iounmap()`

And similarly for: struct namegoeshere

-- 
Kees Cook
