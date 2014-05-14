Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6873348E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:32:48 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E33621FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:32:47 +0000 (UTC)
Message-ID: <1400074363.4759.8.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Wolfram Sang <wsa@the-dreams.de>
Date: Wed, 14 May 2014 15:32:43 +0200
In-Reply-To: <20140512093235.GA2872@katana>
References: <20140509170709.GA9747@redhat.com>
	<20140511111034.GA6400@katana> <53706EAB.7010601@monstr.eu>
	<20140512093235.GA2872@katana>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2014-05-12 at 11:32 +0200, Wolfram Sang wrote:
> > is sent. Why not just tell them run this in-kernel tool with all
> > that checking enabled before you send the patch?
> 
> make C=1 ? That could be perhaps updated to call sparse *and* smatch if
> it finds them installed.

I do that with a simple wrapper:

~/bin/sparse:
#!/bin/sh

/path/to/real/sparse "$@" || exit 100
/path/to/smatch -p=kernel "$@" || exit 200

but integrating it would be better :)

johannes
