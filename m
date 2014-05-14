Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 191EF942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:40:59 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA1181FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:40:57 +0000 (UTC)
Message-ID: <5372C999.6070401@huawei.com>
Date: Wed, 14 May 2014 09:40:41 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Takashi Iwai <tiwai@suse.de>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
In-Reply-To: <s5hvbt9izdm.wl%tiwai@suse.de>
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

On 2014/5/13 21:25, Takashi Iwai wrote:
> I think this has been already raised a few times, but I'm still
> dreaming one thing in our git management: having some metadata
> collection / link for each commit.
> 
> I don't mean for a thing like post-commit sign-off, but rather for
> tracking the information that has been revealed after commit, e.g. a
> regression the commit causes, the later fix commit, or a bugzilla or
> ML link for the further discussion or debugging session.  The
> regression markers would be especially helpful to avoid a pitfall
> through performing bisection.
> 

Yeah, this is very useful.

For example, instead of adding a tag in the changelog to point to
the guilt commit that introduces the bug:

	Fixes: commit_id ("Subject")

It's much more convenient and useful if we can add metadata to the
guilt commit that points to later fixes, and then we simply ask
git to show us those fixes. This helps a lot to people who need to
backport things to older kernels.

> IMO, it would be convenient if such information can be embedded in the
> published git tree, something like (infamous) git-notes.  But, I'd
> like to hear any other options as well.
> 
