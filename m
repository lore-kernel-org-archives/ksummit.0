Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D8F984C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:27:05 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4562D1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:27:04 +0000 (UTC)
Date: Fri, 2 May 2014 16:27:03 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140502162703.0e8ce876@gandalf.local.home>
In-Reply-To: <alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
	<20140502160959.48b71dec@gandalf.local.home>
	<alpine.LNX.2.00.1405022211310.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2 May 2014 22:12:50 +0200 (CEST)
Jiri Kosina <jkosina@suse.cz> wrote:

 
> Hmm, I don't see how maintainer cherry-picking into 'for-stable' branch is 
> different from stable team cherry-picking from Linus' tree.

I think it's more a level of trust. IIRC (and Greg, please chime in
here) there's been more than one instance that people would send Greg
something for stable that hasn't hit mainline.

Moving to git pull requests may make it much more difficult to verify
this.

> 
> The rule that Linus' tree commit has to be referenced in the commit 
> message (cherry-picking implies rebase anyway) can of course stay as-is, 
> and is automatically verifiable.
> 

Yeah, perhaps an automated way to verify git pull requests would work.
Each commit would have to have a specific way to specify what commit it
backported. Then the tool could compare that commit with the commit in
Linus's tree. If it's too different, then it would not accept it and
would require manual intervention to allow it.

Now there's also the problem of not just matching what's in mainline,
but also being something that should go to stable. It may be a feature
and not a true bug fix. That would still require Greg (or who ever is
maintaining the stable tree) to look over each change.

-- Steve
