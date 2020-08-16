Return-Path: <SRS0=dGYf=B2=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2E9C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 11:54:44 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86771207D3
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 11:54:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=labbott.name header.i=@labbott.name header.b="j55Ja//6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86771207D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=labbott.name
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D00D87C5C;
	Sun, 16 Aug 2020 11:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BslyfXPdQYIA; Sun, 16 Aug 2020 11:54:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07F9487C5B;
	Sun, 16 Aug 2020 11:54:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5BDDC07FF;
	Sun, 16 Aug 2020 11:54:42 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 29237C0051
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 11:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 18FA885FA0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 11:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RuYeexxxTc9b
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 11:54:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD53C85F98
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 11:54:39 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id n129so12535675qkd.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 04:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2z9xB6h0onVuiLPOfpcwkvpQxk2cuNCblaJiNFPAzzs=;
 b=j55Ja//6hpyID8SYN5OXZxcsDjLL36bzN+ax4aTtyjQyJmqc33kKQrm3ti2+AkwLCl
 5je5kbHER6uRwNhYwymBdkg7qHG5RvHWu6TA9gTF3VyzMtvIytI3r6xvti9Atk3JE4XG
 0j/a/dQ/w6bZSOtUA2Zz2aBQDBcHC5s3hkJE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2z9xB6h0onVuiLPOfpcwkvpQxk2cuNCblaJiNFPAzzs=;
 b=de3DxEMsJb5SDMXQAGPXsDsKJOrWhaEgnJ3ou+QdajWqCPz4SNRWGcCBpVXzmlm38/
 66uQU3oYFaUXlqcCZJAtQ4CmUW8j/U9lscPYkVSWu+tM5IaBaZeoV9CHMu8rt8FN+PAj
 NG6z6g5f3RYymFaHo2Cou36X7gSHk/IZTfoVus9ZGlGiTyU/VF5EDnuSbteIWlnbhA5x
 vFrir4d8gMprpKQmHvYs9WaK47hUbfoLTMt9PD4uUdBOunoHd0daKGtwRBqeDVq4tnoV
 4Nj+RdDGVW+ycnqIW2p8EwA/CZXDSsaw1cB0KVbNOZ5tbENDy28TdmR7OIkkzCwfKkVs
 e29A==
X-Gm-Message-State: AOAM531VYLBzNd4DNZ0xcwuQYeJT33D62t1hWxLsgtEXxi8r6Be6HpSr
 a4hwGk87Ugi3L8k8RDUjX/B6m4vxss1Eg+My
X-Google-Smtp-Source: ABdhPJy717NtIXf4F7Bc/QD5KeATpNzaWMpeduYDvszI77GbKr/KjXiLBY8kQK6l+CdAX1eE4W1duw==
X-Received: by 2002:a05:620a:c16:: with SMTP id
 l22mr8774158qki.271.1597578878370; 
 Sun, 16 Aug 2020 04:54:38 -0700 (PDT)
Received: from [192.168.1.155] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id d203sm13836069qkc.10.2020.08.16.04.54.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Aug 2020 04:54:37 -0700 (PDT)
To: Jonathan Corbet <corbet@lwn.net>, LKML <linux-kernel@vger.kernel.org>
References: <20200803153612.24ef78d9@lwn.net>
From: Laura Abbott <laura@labbott.name>
Message-ID: <2b19dec5-7596-f82e-709a-cd246427d78c@labbott.name>
Date: Sun, 16 Aug 2020 07:54:35 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200803153612.24ef78d9@lwn.net>
Content-Language: en-US
Cc: ksummit-discuss@lists.linuxfoundation.org,
 tech-board-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Linux Foundation 2020 Technical Advisory
 Board election: call for nominations
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>



On 8/3/20 5:36 PM, Jonathan Corbet wrote:
> The election for the Linux Foundation Technical Advisory Board (TAB) will
> be held virtually during the 2020 Kernel Summit and Linux Plumbers
> Conference, August 24-28 2020.  Nominations for candidates interested in
> serving on the TAB are currently being sought.
> 
> The TAB serves as the interface between the kernel development community
> and the Linux Foundation, advising the Foundation on kernel-related
> matters, helping member companies learn to work with the community, and
> working to resolve community-related problems before they get out of hand.
> We also support the Code of Conduct committee in their mission.
> 
> Over the last year, matters tended to by the TAB include proposals for
> developer workflow improvement, overseeing the Linux Plumbers Conference,
> moving toward more inclusive terminology in the kernel, and more.  Minutes
> from TAB meetings can be found here:
> 
> 	https://git.kernel.org/pub/scm/docs/tab/tab.git/tree/minutes
> 
> The board has ten members, one of whom sits on the Linux Foundation board
> of directors.  Half of the board (five members) is elected every year to
> serve a two-year term.  The members whose terms are expiring this year are:
> 
> 	Chris Mason (chair)
> 	Dan Williams
> 	Kees Cook
> 	Laura Abbott
> 	Olof Johansson
> 
> The remaining members' terms will expire in 2021:
> 
> 	Greg Kroah-Hartman
> 	Jonathan Corbet
> 	Sasha Levin
> 	Steven Rostedt
> 	Ted Ts'o
> 	
> Anyone is eligible to stand for election; simply send your nomination to:
> 
> 	tech-board-discuss@lists.linux-foundation.org
> 
> With your nomination, please include a short (<= 200 words) candidate
> statement focusing on why you are running and what you hope to accomplish
> on the TAB. We will be collecting these statements and making them publicly
> available.
> 
> The deadline for receiving nominations is 9:00AM GMT-4 (US/Eastern) on
> August 24 (the first day of Kernel Summit). Due to the use of
> electronic voting, this will be a hard deadline!
> 
> As always, please let us know if you have questions (the TAB can be reached
> at tech-board@lists.linuxfoundation.org), and please do consider running.

As a reminder, the deadline for nominations is coming up. Please get
your nominations in!

Thanks,
Laura
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
