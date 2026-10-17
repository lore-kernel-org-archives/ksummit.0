Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79583BB9F1
	for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 18:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792261271; cv=none; b=b4cRLvgoN3tzJS2TrqaQoMSuBVA6Po05qq4doPrwGklbX98y3nBH3JSLgVlbluWT5hPumCrY8xcFu5NHHLjW/hrL1bIMbrg22lnCRNJ2DYs6vHDebAgTNfzLWZuDKm82Utun8xggqvUnUMNvgPiO/KQVLTtHQuShdkARHX9pKbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792261271; c=relaxed/simple;
	bh=hFNjsAHWXjRuYrJx37STMe5GE9Kzd1SVBQGqToOMIEc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fyT28oodSB/aa8iCKsaN74jvyS6uW38/nIegiUDquv6if5WCjCus/qHmKeQdPqsvFVWc7nlhTuf6sQJGaMcJRWesKOaskQq7ChF+9LhUwqtvsnItNMQaieW4KArb6gSrCy3EgC6UjkODnv5x1R7OEOyb9TCGCIA6eJdDAW16J5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=UfcLY6j4; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="UfcLY6j4"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-c3156e7705cso131025066b.1
        for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 11:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1792261267; x=1792866067; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L4Dpe4z/fwIWi0F/OI3i1gPV69tD6ALa8RU3ygQJx90=;
        b=UfcLY6j4tSPKoRmm9ldNUuqgMnnTFwTCxyBXevv6pAsxQYEBsBw3GqanHvxbbwRJao
         2RFOYoBwtN9f9sjexBvqwFCWHkGzGwCs72HPlMVxxXry9Mx8c9nJyMBTWR4el7+IsNn3
         GCMex5w3HGM28bKvlr+KFfeTgP5b/jEfIgRGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792261267; x=1792866067;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=L4Dpe4z/fwIWi0F/OI3i1gPV69tD6ALa8RU3ygQJx90=;
        b=sv7tRRS2bWiMRVwFP0k9U2iuyTTgpSKYmhsgxM9KajwPMOTHbzGAIxFFOOUnQ4iG2T
         3WSqQbGn3V/qpwUiZXCBrT8OjnZA8ue0DDJ6vhTKHqec5J7r/RvWT3QyKkEsUkyHHyO0
         xs1ywPr1+60oFeNqKijvgZr96/r4/s65RmN3e8Y/TBo1WyQTX1nxgFl5B5h5j4ZsTvCA
         eiBU+qYqZiCAvnSwLyJXKT80lM5SMmPQWhMNwqa55UDfa3pjzWVsJ8KwLeGXSfg9eaPd
         +kW6KNXnid4iIzCsJJwojtuMNGbVXZZ++SKPQUPs+PzPamIxe7dZnwj8ASVnZCOIZB2E
         wgSg==
X-Gm-Message-State: AFq9FYKxgHiAd0ZEkGTocuJEM9rZvOQ/DQXiargMZ1CX15LZygVviyAq
	8D+mxGJNkNJ6fd0nDeE/MGS7Un9s1wgiq/2+ufJzvUJQl1mzhEEl14TuLaB3Zzaq5lcczt+CHDm
	D1nuIiB0=
X-Gm-Gg: AYBFou2K8YGDPszSKnenobcBQNVxXK1bgk++LcTVQchkd0w9tkZZo1sPoZbWypsYCrC
	ZyenseP7X4dW8LlTCI//gDBR/CWJ7kr7srYpPkf0A5mWvwHY2bnussaSHBMV3n/CuuHNNxqLHEO
	Ccf7/39/eKGBb+RF9qNn3b94swdHK8LFeUGD+F1dMn18/2IRDcSajvK4fA5/cHPnhElSVAv3ODn
	Vkr2HpSCKBXtc9G5dgC7CjkFLV5QpKHpyvmxD7QTBlPXgqEsnSdtJqZTN5OUxTYVfiF65396hMo
	ArBeps7dHxZOGZkb7Mv/TmmymYyxxtXsCGBcox88YszYIww7NX06MKcXF7EsStVn85oPx3bCbou
	ZWxZy/IUaywvzC8sda+81ewk9O4U2zy/juqeA3CAeAA+zLB+W49+Uf++M6wbIdVk0ciCRMNPUej
	h+H7LdRgRfgE3MK31PN0xEkgoxt06KyfohXi5fO25vS748cFgya4Q5ihObzLxn/e3ggyedAZkNY
	KdEffytYwIlEl673cAcVn/v1rJMITUTfLk0tdRH7EyAlU/UwtiuTB2Hp9w=
X-Received: by 2002:a17:907:d48f:b0:c32:110d:682f with SMTP id a640c23a62f3a-c419e63cbc2mr233512566b.18.1792261266942;
        Sat, 17 Oct 2026 11:21:06 -0700 (PDT)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c40919bc742sm194811966b.54.2026.10.17.11.21.06
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 11:21:06 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6ae27f06c2fso1492711a12.3
        for <ksummit@lists.linux.dev>; Sat, 17 Oct 2026 11:21:06 -0700 (PDT)
X-Received: by 2002:a17:907:8687:b0:c2e:412e:5121 with SMTP id
 a640c23a62f3a-c419a93cd3amr220764466b.4.1792261266435; Sat, 17 Oct 2026
 11:21:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
In-Reply-To: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 17 Oct 2026 08:20:49 -1000
X-Gmail-Original-Message-ID: <CAHk-=wj24dSSRDQjvkmcw9LMC=K86d-Xys9=qX=gKoXgrQN1UQ@mail.gmail.com>
X-Gm-Features: AclHuK8lwyjkCqaaDIJRP7PXRWcejmZqYtcfUmprndKXr2Ef6X_rkfn6IJPB2xk
Message-ID: <CAHk-=wj24dSSRDQjvkmcw9LMC=K86d-Xys9=qX=gKoXgrQN1UQ@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Jiri Kosina <jikos@kernel.org>
Cc: ksummit@lists.linux.dev, sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Sat, 17 Oct 2026 at 07:39, Jiri Kosina <jikos@kernel.org> wrote:
>
> Another option I'd like to propose would be to introduce a way for
> submitters to run patches through back-and-forth with Sashiko even before
> properly submitting the Sashiko-polished v1 to maintainers and
> mailinglists.

I think maybe we should make it really easy for people to run their
some kind of sashiko setup on their own, rather than rely on sashiko
itself. After all, these are all people who use an LLM to begin with.

And assuming they sre starting out, they are probably are *not*
building their own local LLM for this either, so presumably /
hopefully they have a fairly capable LLM setup, and the problem is
primarily lack of kernel knowledge (and possibly LLM background too -
that side was certainly a learnign experience for me).

So maybe at least one piece of the puzzle is us pointing to existing
sashiko (or sashiko-like) rules so that people who use LLM's get the
"basic rules" almost by default, rather than burdening sashiko more.

.. and I do still think that we should have some kind of "sashiko
doesn't answer for 18 hours" kind of limiter. Possibly with some
back-off per submitter (and by patch series size) so that repeated
submissions get spread out even more.

                 Linus
