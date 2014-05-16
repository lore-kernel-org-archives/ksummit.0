Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 295F72FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 09:24:20 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 052D3201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 09:24:18 +0000 (UTC)
Message-ID: <5375D934.6070109@huawei.com>
Date: Fri, 16 May 2014 17:24:04 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Jason Cooper <jason@lakedaemon.net>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140516030708.GV27822@titan.lakedaemon.net>
In-Reply-To: <20140516030708.GV27822@titan.lakedaemon.net>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/16 11:07, Jason Cooper wrote:
> Takashi,
> 
> On Tue, May 13, 2014 at 03:25:57PM +0200, Takashi Iwai wrote:
>> I think this has been already raised a few times, but I'm still
>> dreaming one thing in our git management: having some metadata
>> collection / link for each commit.
>>
>> I don't mean for a thing like post-commit sign-off, but rather for
>> tracking the information that has been revealed after commit, e.g. a
>> regression the commit causes, the later fix commit, 
> 
> For the stuff flying by me, I've been adding the:
> 
> Fixes: <12-char hash>: ('Offending patch subject')
> 
> On patches fixing a regression.  It helps the stable team (when Cc
> stable is also added) and in your scenario, you could grep the commits
> for the result of your bisect.
> 

Yeah, but the problem with this is you can't add this "Fixes" tag
to git-log after the patch has been applied to the git tree.
