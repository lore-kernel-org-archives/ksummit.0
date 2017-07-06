Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C45C96F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 16:41:38 +0000 (UTC)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A6F8AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 16:41:37 +0000 (UTC)
Received: by mail-oi0-f49.google.com with SMTP id l130so6948235oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Jul 2017 09:41:37 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 Jul 2017 09:41:36 -0700
Message-ID: <CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 6, 2017 at 7:40 AM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> People have mentioned "make oldconfig" but I've never had a lot of luck
> with that.  It always just prints "* Restart config..." and deletes my
> config.

Really?

For me, "make oldconfig" is pretty much the only thing I ever use
(apart from build testing).

It's very convenient once you have a baseline, and want to just get
the new questions for when the Kconfig files change. It's also how I
notice when somebody adds a new config entry that doesn't default to
'n'.

It's also very convenient when you end up changing your config: just
edit the damn .config file directly, and then re-run "make oldconfig"
just to make sure everything gets updated (and then you'll notice that
you tried to disable some config entry, but it got re-enabled again
because there was something else that depended on it and selected it
;)

So I wonder why it wouldn't work for you.

Now, admittedly, I literally only ever use two source files: the
previous ".config" file, and if that is missing (after a "git clean
-dqfx" or similar), just /etc/kernel-config.

The oldconfig logic has fallbacks to other cases, but they are all useless imho.

Also, I build in the source tree. Maybe you use a separate object tree
and it gets that case wrong.

                   Linus
