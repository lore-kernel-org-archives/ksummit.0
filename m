Return-Path: <hpa@zytor.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <9779b6c3-acd6-10aa-b9ca-c024cd77a861@zytor.com>
	<2984302.a0WA3y5s5U@avalon>
From: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <dcabec8a-ed6c-bfb0-d601-1913f1e6ec8d@zytor.com>
Date: Thu, 26 Oct 2017 02:23:20 +0200
MIME-Version: 1.0
In-Reply-To: <2984302.a0WA3y5s5U@avalon>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: tech-board-discuss@lists.linux-foundation.org,
	Kernel Summit Discussions <ksummit-discuss@lists.linux-foundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 election results 2017
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/26/17 00:14, Laurent Pinchart wrote:
>
>> It was a very close election, with the next candidate on the list
>> receiving 36 votes.
> 
> Do we have a procedure in place in case the tie that we only avoided by one 
> vote would have happened ?
> 

In that case thw winner(s) would be drawn randomly.  The scanning tool
scripts actually assigns each candidate a tiebreaker number via
/dev/urandom, but we have not yet decided if we would do that or, for
example, a physical coin toss.

We have had ties in the past, and had one this time too, but none that
has ever crossed the cut line.

	-hpa
