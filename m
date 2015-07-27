Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B20861BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 27 Jul 2015 14:33:49 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06715202
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 27 Jul 2015 14:33:46 +0000 (UTC)
Date: Mon, 27 Jul 2015 10:33:42 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150727143342.GA2851@thunk.org>
References: <28240.1437753683@warthog.procyon.org.uk>
	<1438003184.26913.23.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1438003184.26913.23.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org, mszeredi@suse.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Overlays and file(system)
 unioning issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 27, 2015 at 02:19:44PM +0100, David Woodhouse wrote:
> This was much nicer when it was being done with DT_WHT internally. And
> you could *still* expose that to userspace as a 0,0 chardev — or
> however you like.

Yeah, that was what I was going to propose.  We can expose it to
userspace as a 0,0 chardev with an inode number of UINT_MAX-1, but
that doesn't have to be the internal representation inside the kernel...

     	     	     	    	     		    	   - Ted
