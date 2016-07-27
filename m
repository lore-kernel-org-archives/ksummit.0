Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1CB4F94E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 01:16:38 +0000 (UTC)
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B12D615F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 01:16:37 +0000 (UTC)
Received: by mail-pf0-f196.google.com with SMTP id i6so824775pfe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 18:16:37 -0700 (PDT)
Date: Wed, 27 Jul 2016 10:16:38 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160727011638.GB431@swordfish>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
	<CALCETrWKk8sLvgXwzu1RQnZRQ7f1f-+p53iJ7yasp_=zTnFDHQ@mail.gmail.com>
	<1469544015.120686.324.camel@infradead.org>
	<CALCETrUh9H+7a7Qoi-rbLztOSWg_Po0m6kH7GhKmqvJ+bVB6QQ@mail.gmail.com>
	<1469577784.120686.373.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469577784.120686.373.camel@infradead.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/27/16 01:03), David Woodhouse wrote:
[..]
> And if you spew *everything* on panic to a limited output like the
> bootx or VGA text-mode console, you might find that the KERN_DEBUG
> messages obscure what actually happened, which would be visible if you
> only printed KERN_NOTICE and above...

yes, limited output is a problem on its own. sometimes backtrace is just too
big and even critical messages don't fit. I ended up once forcing panic() to
re-print that "bug at __FILE__, __LINE__, __func__" at the bottom of panic
output. schematically, something like this:

 #define BUG() do { \
-       printk("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __func__); \
-       panic("BUG!"); \
+       panic("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __func__); \
 } while (0)

and pr_emerg() that string in panic() instead of atomic_notifier_call_chain()
output.

	-ss
