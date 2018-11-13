Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25FE98E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 22:31:12 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1CCD581C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 22:31:11 +0000 (UTC)
Date: Tue, 13 Nov 2018 17:31:08 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20181113223108.GH30750@thunk.org>
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] XArray
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Nov 13, 2018 at 10:02:13AM -0800, Matthew Wilcox wrote:
> Now that the XArray is in, it's time to make use of it. I've got a git tree
> which converts every current user of the radix tree to the XArray as well
> as converting some users of the IDA to the XArray.
> 
> The XArray may also be a great replacement for a list_head in your data
> structure.
> 
> I can also talk about currently inappropriate uses for the XArray and what
> I might do in future to make the XArray useful for more users.

This has been scheduled for Wednesday at 4pm.

     	      		    	      	 - Ted
x
