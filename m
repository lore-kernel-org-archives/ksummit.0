Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56261A7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 16:19:57 +0000 (UTC)
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D410B1AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 16:19:56 +0000 (UTC)
Received: by mail-oi0-f48.google.com with SMTP id l130so23997991oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 09:19:56 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170712082139.17cfd33a@xeon-e3>
References: <10144.1499863410@warthog.procyon.org.uk>
	<12463.1499871476@warthog.procyon.org.uk>
	<20170712082139.17cfd33a@xeon-e3>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 12 Jul 2017 09:19:55 -0700
Message-ID: <CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
 error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 12, 2017 at 8:21 AM, Stephen Hemminger
<stephen@networkplumber.org> wrote:
>
> Netlink has recently got extended error reporting, still not used widely
> and library support is lacking in most places.

Yeah, and that "not widely supported and library support is lacking"
is always going to be an issue with anything like that.

Along with internationalization, which is a whole nasty set of issues
in itself with error messages.

It's not going to happen, in other words. The problems are basically
insurmountable, and the thing it fixes will always be some special
case that doesn't much matter.

Every time it comes up it is because some developer found one case
that they were hunting down and it annoyed them, and the developer
went "if only it had included more information and it would have been
obvious".

But every time it comes up people ignore this basic issue:

     [torvalds@i7 linux]$ git grep -e '-E[A-Z]\{4\}' | wc -l
     182523


Give it up. It's really is a horrible idea for so many reasons.

                     Linus
