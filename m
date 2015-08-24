Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE19B953
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:05:29 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D417022F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:05:28 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 1AFFC22B87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 18:05:28 -0400 (EDT)
Date: Mon, 24 Aug 2015 17:05:25 -0500
From: Greg KH <greg@kroah.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20150824220525.GA15701@kroah.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<alpine.DEB.2.11.1508242048060.15006@nanos>
	<CAGXu5jLtG0Jaf0hDkNtditSSGMxwKF8QC9aWq2Vf1A=FoAYJgA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5jLtG0Jaf0hDkNtditSSGMxwKF8QC9aWq2Vf1A=FoAYJgA@mail.gmail.com>
Cc: Jiri Kosina <jkosina@suse.cz>, Emily Ratliff <eratliff@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 12:00:15PM -0700, Kees Cook wrote:
> On Mon, Aug 24, 2015 at 11:52 AM, Thomas Gleixner <tglx@linutronix.de> wrote:
> > On Mon, 24 Aug 2015, Kees Cook wrote:
> >> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
> >> This is far from a comprehensive list, though. The biggest value, I
> >> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
> >> for constification and integer overflow.
> >
> > There is another aspect. We need to make developers more aware of the
> > potential attack issues. I learned my lesson with the futex disaster
> > and since then I certainly look with a different set of eyes at user
> > space facing code. I doubt that we want that everyone experiences the
> > disaster himself (though that's a very enlightening experience), but
> > we should try to document incidents and the lessons learned from
> > them. Right now we just rely on those who are deep into the security
> > realm or the few people who learned it the hard way.
> 
> Yeah, it can be a hard perspective shift to make. And shifting the
> thinking about the kernel itself to always operating in a compromised
> state makes thinking about how to protect it much easier. User space
> is trying to hurt us! :)

Microsoft's security team, which was responsible for forcing all of
their developers to undergo some security training every year, has
boiled it all down to these simple 4 words:

	All input is evil.
