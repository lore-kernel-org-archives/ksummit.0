Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21037A1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:52:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0181.hostedemail.com
	[216.40.44.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DA811F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:52:07 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id A9C8A17279D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 03:33:53 +0000 (UTC)
Date: Wed, 27 Jul 2016 23:33:49 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20160727233349.3730fa30@grimm.local.home>
In-Reply-To: <20160720121110.GA5834@quack2.suse.cz>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<1468962539.2383.82.camel@HansenPartnership.com>
	<87lh0xf9xv.fsf@x220.int.ebiederm.org>
	<20160720121110.GA5834@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 20 Jul 2016 14:11:10 +0200
Jan Kara <jack@suse.cz> wrote:

> > Nothing.  I am just honestly looking at ways that we can get things to
> > always or almost always run.   Sparse isn't getting run regularly now so
> > I was suspect that would not be as good of a solution.  
> 
> Isn't sparse run by 0-day testing? I thought it is...

I get sparse warnings from the 0-day testing, so I believe that it is.

-- Steve
