Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 671A0D82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:07:16 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 15B573D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:07:16 +0000 (UTC)
Message-ID: <1561756033.3335.22.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Shuah Khan <skhan@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 28 Jun 2019 14:07:13 -0700
In-Reply-To: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2019-06-28 at 14:11 -0600, Shuah Khan wrote:
> In a recent patch discussion, I learned that some maintainers would
> like to see patch version changes in the commit log.
> 
> I went looking in the git log and found a handful of recent commits
> with "Changes since" type information in the commit logs. It appears
> to be maintainer preference and a recent trend.
> 
> I see the value in including the information. It can be informative
> and valuable for future work in the area.
> 
> Is this something that we would like to see in all commits going 
> forward? If so, updating submitting patch documentation and making
> sure the version information evolves from "informal" to more formal
> nature that fits in with the commit logs would be helpful.
> 
> Making sure it doesn't get out of hand and commit logs don't
> become too long to be useful would also be helpful.
> 
> Late entry, as I happened to come across this a day or two ago.

It's always been the policy for most maintainers not to include these. 
They're usually context dependent like responses to reviews or how the
series changed because of testing or API changes.  Once they're placed
into history devoid of context they'll become a distraction rather than
useful information.

Conversely, if they do contain informative content that's about the
patch, not external context, that should have been placed into the
changelog.  So my other fear is that including version text will
encourage people not to update the original changelog leading to
potentially confusing changelogs requiring you to wade through all the
versioning information.

So I prefer we keep the current prevalent behaviour of removing the
version change information and making sure the relevant parts are
captured in the latest patch change log.

James
