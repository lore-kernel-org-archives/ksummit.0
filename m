Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 880781A70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 21:04:13 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AFA0782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 21:04:13 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id 9so1032477ple.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Jul 2019 14:04:13 -0700 (PDT)
Date: Tue, 2 Jul 2019 09:30:34 -0700
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <201907020926.FB19EDEBCC@keescook>
References: <20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1562082713.3321.38.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 02, 2019 at 08:51:53AM -0700, James Bottomley wrote:
> Yes, I think we all agree on this.  The real question is how.  If we
> make git do it, I think trivially Message-Id: can become part of the
> optional metadata.  Or we could all use commit hooks that add a link
> tag.  Personally I prefer the former because it would be universally
> done with no effort but I recognise it would take time to get the
> ecosystem change to propagate.

I think this should be easy to implement in a general way. I suspect
there wouldn't be much love for hard-coding the details, though, so
maybe it would require per-developer git configuration. I imagine a
general mapping would need to be:

list_email -> archive_url

i.e. if "$list_email" is in the To/Cc, then "git am" can easily insert
the Message-Id into the "$archive_url". For example:

linux-kernel@vger.kernel.org -> https://lkml.kernel.org/r/%s

-- 
Kees Cook
