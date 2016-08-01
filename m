Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1690394D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:34:55 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E24BE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:34:54 +0000 (UTC)
Message-ID: <1470047690.3389.30.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 01 Aug 2016 12:34:50 +0200
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>
Subject: [Ksummit-discuss] extended (syscall) error reporting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I didn't see this proposed, but I don't think it ever got completely
resolved either?

Tim Bird's note on the "more useful types" thread reminded me of this;
he said something along the lines of "if we knew where each error is
generated, we could more easily identify where a specific error could
have come from."

The extended (syscall) error reporting would also help with that, and
in particular with the netlink functionality there are always a lot of
places that return -EINVAL and you have very little idea of where this
came from. For netlink, there are various avenues of how to address
this, and something special needs to be done there due to the structure
(it's not even returned as an error from a syscall.)

However, it seems worthwhile to have a more general discussion here,
perhaps trying to come up with a general "framework" or "structure"
that everyone could use, regardless of the actual signalling mechanism
towards userspace?

johannes
