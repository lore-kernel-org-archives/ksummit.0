Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6100D1BFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 12:24:26 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1E0212C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 12:24:25 +0000 (UTC)
Date: Tue, 22 Sep 2015 15:24:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20150922122409.GC4953@mwanda>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
Cc: Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 09:35:50AM -0700, Kees Cook wrote:
> As an example, making the kernel code memory read-only means an
> attacker cannot just directly change the kernel's execution path when
> they use an arbitrary memory-writing flaw.

Part of the problem is that C defaults to writable and you have to
explicitly add a const if you want it read only.  Then when you are
reading the code and you see:

static struct uvc_format_desc uvc_fmts[] = {

You can't immediately tell if it is writeable because it needs to be or
because that's just the default.  We should make a new keyword that
means non constant then we could grep for structs which have a function
pointer and complain if they weren't specified as const or __writable.

Maybe there is a way to do this with GCC attributes but I have never
used them before and I couldn't immediately see how to do it.

regards,
dan carpenter
