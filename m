Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AECBC49ED7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 15:46:36 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0017F2081B
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 15:46:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AhblWwK/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0017F2081B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 98D33C7C;
	Fri, 13 Sep 2019 15:46:35 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58BAEC6F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 15:46:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52C857D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 15:46:33 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id z67so28513739qkb.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 08:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XO70El4oS2tOzApEnum8feip+ENgacm8GuaL7eIjAHM=;
	b=AhblWwK/ROHlFbIbdNsCh7YKSiQqOvgtvVUg/nA45czjfbmYf3swhf+jd8vv5Nv2eE
	TOajmML3fZQqKooKG8Fw3e5TDIxCqjKhdH/ekU91iKoV0+jCPGgCyCjBsQF3zMzumpej
	MmaKBFBxLynI0g5CPUu3a9NN3tGgmF+PmJy5vLJw94ezrvqPGzQ7mnpqdKQPwgp7jOIe
	LaAAjUNA+7bzjNk1JXfVdS0aUPQBpSyHc2cRKejQLhS3s0ug8XSVDzEpvxySyt6egjs4
	G7imPpb0kaQRrEy8d0rYC/MQQPqwnV9g1YOW4o+7LEjbgw4HE+IGDQv84aUiM3SrzDEa
	t/4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XO70El4oS2tOzApEnum8feip+ENgacm8GuaL7eIjAHM=;
	b=KjsvP+0njJjl0ncvD7FgxgE8ud8I2cnJxPrOC1MTYVrDqezHjLuJX7+Ahb7WgJmHcq
	p8KGT3Tc/ClDhJ2o8Zi5uIo+JdnICURDQOQlnSyANa931yiUNT/tfiHJRurFqlCdIL1e
	dBQcxkGwW5zMWJrUMYrsIxji5ntpWnrRio60AGqgGektrwv/ka1wb9F8AZv+hpUhrv2I
	4XQTt/BPnzjtOsto6tNoGa0+jbR1PmcKLM9m+csqU1DDAZ+R7L+r6S4REAXeHj/gz7+K
	TwGGoIBHoyI0BhliyOzZFE6Nc2k9Yk7RwMpssgO21Gt5vpEcImNe0m+ToPjWLhQsgOYO
	TM4g==
X-Gm-Message-State: APjAAAVsn45ZdIeE/okfqVTJYtAUG9hIp4+o9KsStqSSkukz26Cv6KgQ
	QXlfr14DBjGMY+nQyLq4btRML70KXoxmed4Scg==
X-Google-Smtp-Source: APXvYqwkoYIPGED4jHTOIcDuuctuHZYBF5qjDvf9su4HjEVpVRrH0fkPzLII7bGDsE7EPykfDy10fpoUaYfUeHquyaA=
X-Received: by 2002:a37:682:: with SMTP id 124mr46792397qkg.393.1568389592307; 
	Fri, 13 Sep 2019 08:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
	<20190913010937.7fc20d93@lwn.net> <20190913114849.GP20699@kadam>
	<b579153b-3f6d-722c-aea8-abc0d026fa0d@infradead.org>
In-Reply-To: <b579153b-3f6d-722c-aea8-abc0d026fa0d@infradead.org>
From: Rob Herring <robherring2@gmail.com>
Date: Fri, 13 Sep 2019 16:46:21 +0100
Message-ID: <CAL_JsqLo9-zQYGj2vaEWppbioO0rXu-QNbHhydYdMgrZo0_ESg@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	bpf@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
 MAINTAINERS: Maintainer Entry Profile
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Sep 13, 2019 at 4:00 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 9/13/19 4:48 AM, Dan Carpenter wrote:
>
> >> So I'm expecting to take this kind of stuff into Documentation/.  My own
> >> personal hope is that it can maybe serve to shame some of these "local
> >> quirks" out of existence.  The evidence from this brief discussion suggests
> >> that this might indeed happen.
> >
> > I don't think it's shaming, I think it's validating.  Everyone just
> > insists that since it's written in the Book of Rules then it's our fault
> > for not reading it.  It's like those EULA things where there is more
> > text than anyone can physically read in a life time.
>
> Yes, agreed.
>
> > And the documentation doesn't help.  For example, I knew people's rules
> > about capitalizing the subject but I'd just forget.  I say that if you
> > can't be bothered to add it to checkpatch then it means you don't really
> > care that strongly.
>
> If a subsystem requires a certain spelling/capitalization in patch email
> subjects, it should be added to MAINTAINERS IMO.  E.g.,
> E:      NuBus

+1

Better make this a regex to deal with (net|net-next).

We could probably script populating MAINTAINERS with this using how it
is done manually: git log --oneline <dir>

Rob
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
