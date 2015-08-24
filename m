Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6225CBFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:53:09 +0000 (UTC)
Received: from Galois.linutronix.de (www.linutronix.de [62.245.132.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1599E198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:53:08 +0000 (UTC)
Date: Mon, 24 Aug 2015 20:52:36 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>
In-Reply-To: <CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1508242048060.15006@nanos>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Jiri Kosina <jkosina@suse.cz>, ksummit-discuss@lists.linuxfoundation.org,
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
> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
> This is far from a comprehensive list, though. The biggest value, I
> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
> for constification and integer overflow.

There is another aspect. We need to make developers more aware of the
potential attack issues. I learned my lesson with the futex disaster
and since then I certainly look with a different set of eyes at user
space facing code. I doubt that we want that everyone experiences the
disaster himself (though that's a very enlightening experience), but
we should try to document incidents and the lessons learned from
them. Right now we just rely on those who are deep into the security
realm or the few people who learned it the hard way.

Thanks,

	tglx
