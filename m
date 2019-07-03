Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5A621070
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:42:25 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 957B9836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:42:25 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id e5so1349977pls.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Jul 2019 07:42:25 -0700 (PDT)
Date: Wed, 3 Jul 2019 07:42:23 -0700
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <201907030741.648E95E8@keescook>
References: <201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu> <201907021559.FEC3922@keescook>
	<20190702231858.GK3032@mit.edu>
	<1562110396.29304.35.camel@HansenPartnership.com>
	<20190703041602.GB19593@mit.edu>
	<1562129458.29304.94.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1562129458.29304.94.camel@HansenPartnership.com>
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

On Tue, Jul 02, 2019 at 09:50:58PM -0700, James Bottomley wrote:
> My thought was actually a message-id is more descriptive because it can
> be fed into any archive (or even google) to find the email.  However,
> it's also easy to strip the message-id out of the lore url and do the
> same, so my only weak objection is the URL would be expected to be
> functional and the chances are there will always be some patch on some
> list that isn't in the archive yet.

What I like, though, is that it is a one-time retro-active fix. If we
discover a missing list we can add it, and suddenly all the URLs
referencing message ids from that list start working. :)

-- 
Kees Cook
