Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EC71A9A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 14:39:16 +0000 (UTC)
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6647C1FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 14:39:16 +0000 (UTC)
Received: by mail-ig0-f180.google.com with SMTP id c1so2525658igq.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 07:39:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140528143246.GV15585@mwanda>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
Date: Wed, 28 May 2014 16:39:15 +0200
Message-ID: <CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 4:32 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> We should have a special tag for reviewers who find actual bugs because
> that is the best sort of reviewer.

My approach has been to insist on an in-patch revision log which gets
included in the commit. And that for any changes and bugs spotted the
reviewer/commenter must be acknowleged. See e.g.
d978ef14456a38034f6c0e for a very nice example of that. But that's
also a good example for no tag to acknowledge all the work that went
into this review/patch, since I've done the final review myself and
only put my sob onto the patch.

Something more standardized here would indeed be nice. There's still
the problem that some review takes a really long time (e.g. if there's
lots of design considerations), and other patches can be reviewed
quickly. So a binary tag will always be lacking.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
