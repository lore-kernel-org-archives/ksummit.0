Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 16BCF2B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:10:02 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.227])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 856111FB23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:10:01 +0000 (UTC)
Date: Fri, 2 May 2014 16:09:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140502160959.48b71dec@gandalf.local.home>
In-Reply-To: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2 May 2014 21:42:04 +0200 (CEST)
Jiri Kosina <jkosina@suse.cz> wrote:


> I'd like to re-iterate my usual question / discussion topic of 
> responsibility distribution for -stable patches; my proposal again would 
> be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
> subsystem maintainers preparing 'for-stable' branches and sending pull 
> requests to the stable team, instead of rather random cherry-picking of 
> the patches from the air as they fly by the stable team members.

But the stable tree has a distinct requirement of all patches having to
be first in mainline.

Having a pull request can allow people to sneak things in that may not
be in Linus's tree. That would be bad. The cherry-picking guarantees
that only changes that were in Linus's tree get into stable.

-- Steve
