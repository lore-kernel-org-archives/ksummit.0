Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ECD3C47404
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 12:06:10 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FAF02075C
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 12:06:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="D7YAAybf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FAF02075C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B54EED48;
	Thu, 12 Sep 2019 12:06:09 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99CF2D3B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 12:06:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1066389B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 12:06:07 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id m11so53894159ioo.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 05:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=D44Fe2VILQN9/Bvxc1wVCIIFTBEtm8qeBpejqKYL84Y=;
	b=D7YAAybfUy1MqQsYXaDWDqbalfeWL3wKQCKsxfB+b6zLnw/Zov84IIh/stnn4uxBOI
	FEUuHinWJkzYX8lPZxy2AxZb4ob75hJmMkGy2UD32d8C6MG77byH23unn3jQhdEE4yX3
	ipOrN6akivxOevATMs9ZobFSo3LHrsBLROPa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=D44Fe2VILQN9/Bvxc1wVCIIFTBEtm8qeBpejqKYL84Y=;
	b=spgd9QLnQ5KRnL33IV7V+9DQMo64N6zsxcjXffbJeP7FnVdKZfQFuXzi9+KJ6y/ceL
	nZcLKyVJnPrrQLu7D8zoX0Zs2W5cRStAfPZbVhDjqgo8zPz/uiaavVawEO08EDO7lzjj
	g39hTziUq8KciPUyhTxbYlb8Aqngk/ggEsw6ZzqJqbEDLys7oFG8LBKXsWIj3t/Pm8qB
	q72STEyG9XglytRwqTQEoo3tcGbqONwFUM+w9k5D4OjRiC6PDpMJBMuOnLX/VriDkEFy
	6Qx3S+OKKi3w3k9UEx9vYuYXjpWbf4o0Ek5swiP1opz+Q4IM/1mKQcLMHmncwQKD+w2/
	tkLg==
X-Gm-Message-State: APjAAAVrSAlblhIQNpZC8zjLwLogdKObaeJ1/la//ZRbxb6TWQtYPBgK
	vdL5vakVzEU2Io1PQQCWl/REu3IOi/I0dCS/Cgg=
X-Google-Smtp-Source: APXvYqzp/3HlPzjc0r8kn/l97NKp0QWRavt2N7G1rB+OiP7ijjkqXCv72AYTAcZ+sKTO+cuADRoAqg==
X-Received: by 2002:a02:cc61:: with SMTP id j1mr5770419jaq.138.1568289967111; 
	Thu, 12 Sep 2019 05:06:07 -0700 (PDT)
Received: from pure.paranoia.local ([87.101.92.157])
	by smtp.gmail.com with ESMTPSA id
	z14sm18521743iol.86.2019.09.12.05.06.05
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 12 Sep 2019 05:06:06 -0700 (PDT)
Date: Thu, 12 Sep 2019 08:06:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190912120602.GC29277@pure.paranoia.local>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190911150804.GA10046@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911150804.GA10046@mit.edu>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
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

On Wed, Sep 11, 2019 at 11:08:04AM -0400, Theodore Y. Ts'o wrote:
> Hi all,
> 
> Many of you attended Dmitry Vyukov's talk at the Kernel Summit track
> today, "Reflections on Kernel Development Process, Quality, and
> Testing".  (For those of you who haven't, the slides are available
> here[1].)
> 
> [1] https://linuxplumbersconf.org/event/4/contributions/554/attachments/353/584/Reflections__Kernel_Summit_2019.pdf
> 
> Greg K-H has suggested, and I strongly agree, that it would be
> worthwhile to add this to the agenda of the Maintainer's Summit.  In
> particular, what next steps should we take and what should be the
> criteria and the process for trying to further standardize our tools
> and processes in order to make make our development processes more
> mature and to improve developer productivity and happiness.
> 
> If you didn't attend the talk, I encourage you to take a look at the
> slide, so we don't have to spend time trying to bring people up to
> speed on the discussion to date.  My plan is to schedule this as our
> first topic tomorrow afternoon.

To follow-up, this is a very rough outline of a proposal that I am going
to submit to the Foundation in hopes to fund maintainer tool
development. It follows along some of the lines highlighted in Dmitry's
talk.

--------

# Stage 1 (Normal brain): "local patchwork"

- Implement a mutt-like tool ("putt"?) that uses locally cloned
  public-inbox archives to track patches/series submitted to mailing
  lists
    - Pre-filters by keywords and paths in patches
    - Tracks and automatically inserts taglines
      (Reviewed-by, Acked-by, Tested-by)
    - Can ignore a patch/series until it sees certain taglines
      (Tested-by: zeroday bot, Reviewed-by: Trusty Intern)
    - Automatically tracks latest series and offers an interdiff view
      between series revisions ("show me what changed between v1 and v2")
    - Allows responding to patches and conversations a-la mutt
    - Allows applying patches/series to local repos


# Stage 2 (Enlightened brain): "now with CI and workflows"

- Add configurable workflow functionality allowing maintainers to run
  local or remote tasks on patches and series, before maintainer sees
  the patches, e.g.:
    - Create a branch and attempt to apply series
    - If succeeds, run a batch of CI tests
    - If succeeds, mark as "CI passed" and show the maintainer
    - If fails, reject automatically using a "sorry, tests failed"
      template, including relevant error messages

- All of the above runs outside of the UI tool ("putt-cid"?) and defines CI
  routines that can run in cloudy environments or locally using
  containers.
- Putt communicates with putt-cid locally or remotely to identify
  patches/series that the maintainer should review


# Stage 3 (Galaxy brain): "email as a secondary channel"

- Support additional distributed communication mechanisms in conjunction
  with existing mailing lists.
  - SSB is a peer-to-peer replication framework that has built-in
    cryptographic integrity and attestation ("immutable git-like
    chains per participating developer")
    - offers native support for structured data like bug reports, CI
      results, code review comments, etc.
    - can easily support email-to-SSB and web-to-SSB bridges, so
      developers can choose to participate using familiar tools
    - has known limitations in v1 of the protocol, but v2 is being
      actively developed to address them.
    - or we can take it as a base and develop an SSB-like protocol that
      better suits distributed development needs.

  - Radicle is another interesting alternative that creates a mechanism
    for automating some maintainer tasks by defining "state machines,"
    e.g.:
    - automatically merge a revision if all tests pass and at least 2
      Reviewed-by's are seen.
    - May have been sipping the blockchain cool-aid a bit too much
      ("Immutable append-only records").
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
