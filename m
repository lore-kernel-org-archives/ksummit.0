Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CD530996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:46:00 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 924221FDED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:45:59 +0000 (UTC)
Date: Thu, 29 May 2014 14:45:58 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140529144558.47464f90@gandalf.local.home>
In-Reply-To: <13876340.WYWhRQ9Qdn@avalon>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140528163902.GA5099@sirena.org.uk>
	<CAKMK7uGB8toTgmRJg4akj73CWBdKcUBH6CHt3TGHov5hHODwFA@mail.gmail.com>
	<13876340.WYWhRQ9Qdn@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 29 May 2014 01:17:39 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:


> That's one particular point that I have to spend too much time on according to 
> my tastes. When receiving version N+1 of a patch, I need to compare versions N 
> and N+1, open the comments I've sent for version N, and verify that they all 
> have been taken into account. I'd be interested in knowing about how other 
> maintainers automate (part of) that process (if they do).

I'd like to recommend more use of the Link tag here. If you make a v2
of a patch, that should include the Link tag that points back to the v1
posting. That way it becomes easier for a reviewer to go back and see
what the previous comments were with that particular patch.

-- Steve
