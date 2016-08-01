Return-Path: <shuahkh@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B836919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:53:29 +0000 (UTC)
Received: from s-opensource.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E58FB102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:53:28 +0000 (UTC)
To: Steven Rostedt <rostedt@goodmis.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon>
	<20160729102819.2245ae76@gandalf.local.home>
From: Shuah Khan <shuahkh@osg.samsung.com>
Message-ID: <579F544B.2010507@osg.samsung.com>
Date: Mon, 1 Aug 2016 07:53:15 -0600
MIME-Version: 1.0
In-Reply-To: <20160729102819.2245ae76@gandalf.local.home>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	Shuah Khan <shuahkh@osg.samsung.com>,
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

On 07/29/2016 08:28 AM, Steven Rostedt wrote:
> On Fri, 29 Jul 2016 11:59:47 +0300
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> 
>> Another limitation of kselftest is the lack of standardization for logging and 
>> status reporting. This would be needed to interpret the test output in a 
>> consistent way and generate reports. Regardless of whether we extend kselftest 
>> to cover device drivers this would in my opinion be worth fixing.
>>
> 
> Perhaps this should be a core topic at KS.
> 

Yes definitely. There has been some effort in standardizing,
but not enough. We can discuss and see what would make the
kselftest more usable without adding external dependencies.

One thing we could do is add script to interpret and turn the
test output into usable format.

thanks,
-- Shuah
