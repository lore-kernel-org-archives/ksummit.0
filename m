Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA0CCA45
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Aug 2014 21:40:02 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 304492033A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Aug 2014 21:40:02 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <53FB17A7.9090209@hitachi.com>
References: <53FB17A7.9090209@hitachi.com> <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30123.1409089196.1@warthog.procyon.org.uk>
Date: Tue, 26 Aug 2014 22:39:56 +0100
Message-ID: <30124.1409089196@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com> wrote:

> What I found is that the module unloading involving 2 stop_machine()s
> for each module removing. It must not be needed.

IIRC, at least one of the stop_machine() calls was to prevent problems between
module removal oopsing and the symbol lookup trying to look up whilst dumping
the oops.

David
