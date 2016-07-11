Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3FA58D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 18:26:57 +0000 (UTC)
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1B8D2212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 18:26:57 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id E9C5547B912
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 20:07:13 +0200 (CEST)
Date: Mon, 11 Jul 2016 11:07:05 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20160711180705.GA8424@x>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
 whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 01:53:42PM -0400, Kees Cook wrote:
> On Mon, Jul 11, 2016 at 12:28 AM, Andy Lutomirski <luto@amacapital.net> wrote:
> > I don't how much of this really needs an in-person meeting, but maybe
> > some if it would benefit.
> 
> Perhaps some discussion on new/interesting/better gcc plugins, as the
> infrastructure and several good examples should have landed by then?

I'd be interested in that as well.  One item for discussion: for some of
the ideas proposed for implementation via GCC plugins, should the code
rely on the plugin to provide functionality at compile time, or should
the plugin identify places in the source that need editing and/or
explicit annotation?  The former provides the possibility of removing
annotations in favor of autodetection, which seems more maintainable;
the latter provides the functionality even without the plugin.

- Josh Triplett
