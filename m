Return-Path: <prvs=0115da5d2b=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A9567A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 Nov 2016 16:47:14 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AFEBD19E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 Nov 2016 16:47:13 +0000 (UTC)
Date: Thu, 3 Nov 2016 10:47:03 -0600
From: Chris Mason <clm@fb.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20161103164702.GB56112@clm-mbp>
References: <20161103113951.5b35d874@grimm.local.home>
	<1818303.QSFsUEaaJd@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <1818303.QSFsUEaaJd@avalon>
Cc: linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Results: Linux Foundation Technical Advisory
 Board Election 2016
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Nov 03, 2016 at 06:06:35PM +0200, Laurent Pinchart wrote:
>Hi Steven,
>
>On Thursday 03 Nov 2016 11:39:51 Steven Rostedt wrote:
>> The TAB elections are now complete. Thank you to all the candidates for
>> putting their names forward, and a big thank you to Grant Likely, Shuah
>> Khan, Jes Sorensen, H. Peter Anvin, Chris Mason and the Linux Foundation
>> staff who helped handle the election logistics.
>>
>> With 108 ballots cast, the top 5 candidates received:
>>
>> The next highest voted candidate received 44 votes.
>>
>> Full results are available on request.
>
>Just curious, is there any particular reason to not publish the full results ?
>
>Could you also share feedback on the automated ballot counting process 

Just nominating yourself and going through an election can be 
uncomfortable, at least it always is for me.  We are lucky to have a 
deeply qualified group, and I'd rather focus on encouraging people that didn't 
get elected this time to try again next year.

The ballots were counted by hand.  Grant, Steve and Shuah each counted 
every ballot and they verified that everyone got the same results.

We also test drove the optical scanning of the ballots with a tool 
called SDAPS (http://sdaps.org).  This was Peter's idea, and it ended up 
working very nicely.

Out of 108 ballots, sdaps missed a single vote and didn't have any false 
positives.  The optical scanning was faster than the hand counting, and 
we used the SDAPS gui to verify each ballot, and correct the single 
miss.  The gui is the major reason I trusted the result, it's minimal 
but really fast.  We used an off-the-shelf scanner, chosen because it 
was the fastest model that fit in my suitcase.

SDAPS recommends latex to design the ballot, and provides macros to make 
it fairly painless.  Latex brings its own frustrations, but it worked.

-chris
