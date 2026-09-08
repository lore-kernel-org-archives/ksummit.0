Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260314EE842
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 10:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.225.140
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788862503; cv=pass; b=fVbEt93/ctbTsH/Wbc92TnyC7FYriPMC6sSoIALjG8hR3JUbP8lUxyTohg3QhrklS1xhyCHjkoiuCaAhC5lswaSRLgPM7cxVGUaZwpsY7xaRLwYsr//LvSFkvZk1Qyv3+c03bBYRtt1zixhwHQvZZLTL6Z10wOD/OaErLBZp+Ew=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788862503; c=relaxed/simple;
	bh=i7r41e2HeVV4nrn9I4o/xUr5nJT1GajsMaS6Yd4x1lM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ka7eZ8YsOsNSmV7S5Hba7tUBRCE3imW8BGk1H4XjH0ePJbY0TEiSCHLogio8Xad+lTN/75kGRXUtxZoUQm0caO4vZRvNDYGGwk+0b53LTVot+TOYIJacAAhRLTyF2eLa+11fBTy0GUp4SuAtaTi/X8+wQzliP8QXjkHRwuoIM5g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eyxpMaPE; arc=pass smtp.client-ip=74.125.225.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eyxpMaPE"
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49cd6185db7so5688225e9.1
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 03:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788862500; cv=none;
        d=google.com; s=arc-20260327;
        b=gKrwaAfBtCU9X1LHyzTc7Xq99Cck9i/qHbKpoqHjct3Jx/73lH9WjeV3VyDSaoXs+I
         uA2LtWL6q1tJ3rqNk64WQjj1JBrWQJgTGXcra8hZJfIlZMaINvs6X5wUqKNnvixTfHRn
         oo+Cj88m5FIaHIV/zwzg6jxc5IQh/v1wkLGy/x0kYO8lVibKV7T/oMWTn2MKj3aFiPiP
         9Fqgw1JXZt82Uh08YpiE20vKEt2+yYW28Jd1BU6hvx8hh0bF4a98CATTRr8HkwQzHP3Q
         ep3yKpTfbYwpCxQT3+Urtbrd3Q2JCqBre+HHVkrNZ59jfSrQtkLy2wZoI5SLGWSkmaDL
         5zoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cR5STRjE6uLIJL2YiouHOz9BuRu4zq22VbYgNTgDSnU=;
        fh=UU21ZB/F+lGqCw3rh3EEF6KZbi0P44oZ7U9iRw8RjzE=;
        b=bo7Sf9pR549AOJCMSJScQgHLwEC+imWj8VbU+hSsk1acMUF5KRIgxyh2cjoVgc0ECZ
         2avtZwvrL6Eb5bpIpr5ZpYsAJclOHQcu0wc+KtbtqS5QBY+b/THcdROTjG5g7AMsZCF5
         dcKR+0spBCRAH27XGA74RKJpE949xNlZvOsNUgnCwCe5S9U/0/pGoaYOb4D1K/U47bMw
         R1y4VW5keCzeCCJa8gMJ5MACEeXCHAO3lYNU0UZU1ZdeiQxwV1PzEf2bEp/Q98oFSLkN
         WpgBtod+Y2dyJxjvH3aFb9iAEEFIldT9CLbIoDZn5FIaN91XM1QtDe2o0WNoVenDVOGT
         oAwQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788862500; x=1789467300; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cR5STRjE6uLIJL2YiouHOz9BuRu4zq22VbYgNTgDSnU=;
        b=eyxpMaPEyDhlSE+UmxSNEG4+lQ2nZrPZEeINrIvT8vExh6sUWqX+1l62lGHN+evohJ
         OVIZ/JQIYZpeVNNWsW59Qqp+zd6MOixe7Dhvi87z2wzVVsh4lKZHhUVNSaPE8l0Ozh9C
         G1SDh0L4EMn0hfnsB1ks8Ls9FSaflwTYdQsB7tIwvfHSQe2UAvzgUv84zuXy1Vn60mQc
         65WRW9hjbtku6F9ZIb988ohaEARp7VLZHPsB3t2oIl5iOm3Xj5ZSFwNUXVVS3FW8zZrS
         V/T4SGDV6SecKVktlJmddn8krhl2ViO4kgVCuYLeZfe4KxJrCTNvI3kj7PqXHlatISeZ
         kojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788862500; x=1789467300;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=cR5STRjE6uLIJL2YiouHOz9BuRu4zq22VbYgNTgDSnU=;
        b=pNWYjlRlRE2pBnDXGitGiqg82bPSwTMtcNO1nk84G4DEKgx+2s4Lz1h4F3wEanndcj
         vvc4MamEbZUpHDRB9HzDM0uIAELH5m76oI+WrbA+gVw1AHiDELdiwnUD6Niqzh7yRpvf
         8Oyh9SucDf46qCX91VXv8iiMIh1iH3wdfgjoyL9tRpcThIELJ9/Dwz/2LlHKWGc086rL
         JYmQ0Q6PJbOc+2um1X68NPjZKLcbYZjkcmmwrvuDyFtwHXDyRxwinYSMBbNIwJIFO4ap
         QxEWLmxv88iAmWgZqdxWtM+T1IBcNoLvW6Q9mTQdkIQKE3rPfS20DfaHajzYSgRmNvnH
         UpLA==
X-Forwarded-Encrypted: i=1; AKwUvBxwkwmjeswNcTPfxFyAS+duf+f4MiECWQ9MWDYdQEU2kt1y/y2dkk89gsViR/sXixmvYTE56ade@lists.linux.dev
X-Gm-Message-State: AFuF++mLnqMZ0UME434p3LRIEP9ax96ZpFBgBgW9ANbCU9WI3ZFkQdzq
	hiwR2Gfm6u0iM/11W1Qn+JRTiIwos8DxDosGIjyYXtLmIBNr+0UrRt/V1k9D9M0r85cmTkdbb+M
	pj9GdQ0BcR53TgrqY2OLZ4rOvRqRcTIs=
X-Gm-Gg: AYBFou1E/NvLdIZZnrKiIR1OmCxkQ/B9WQg5WFFIonmpQEh8ykeLEd7ZFCr+4edXvX8
	WtJ1uuuhGZ1Vnl/IqMPorNURybHBPZXB1rU+eMmKynBr90HaIC101yZ2Eg94abSDaVHDd0A3CtE
	CyzoZV1eH7VUQb5Ax8iM05hLi7646W81tw/MtQHhhYAv3/I1Cx9qO2T7eEupZnvqKfC+DEp962M
	8mCoReVA11Tnv/IrjhZCo8faLuFRhXS2tF68ykwzyjr8triQVc+iBySkRhRA3qHHT56UIA1v3qC
	wJAKgRXi4p+Gtue2/D9+mnS4KrzCOKQr+75ikcdj9pJqJA==
X-Received: by 2002:a05:600c:6216:b0:49c:799a:177b with SMTP id
 5b1f17b1804b1-49d1754394emr71887255e9.2.1788862499888; Tue, 08 Sep 2026
 03:14:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu>
In-Reply-To: <ap-AmsGgDNFYLlw8@mit.edu>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 13:14:48 +0300
X-Gm-Features: AcwNN1VhQkxOy690DUGsXKlV7H-MNDJfqcHRS0e-im_GEylFFHLnIzc59vKZbh0
Message-ID: <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Theodore Tso <tytso@mit.edu>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 06:52, Theodore Tso <tytso@mit.edu> wrote:
>
> Looking at some of the videos which you cited, and your description,
> what the kernel safety effort reminds me is the PREEMPT_RT patches[1],
> so the path to upstream that was followed by the PREEMPT_RT patches
> might be instructive.

Yes, that path is the one we expected from the beginning.
But OTOH it's perhaps the slowest.

And it's not mutually exclusive with trying to accelerate all or part
of the process.
Through this discussion, for example.

Slow path as a fallback is always available.
We are definitely not betting the house on getting feature X
merged by any date Y, which often seems to be the cause
for friction when someone tries to upstream something.

So we can afford perhaps more flexibility

But there is an extremely important aspect, where what we are doing for safety
diverges from the typical project. Even from the PREEMPT_R one.

AFAIK PREEMPT_RT was driven by specific functional needs only.
We need to deal also with additional regulatory requirements that affect
the shape of the code, not only its behavior.

To the best of my knowledge, this aspect is perhaps a new addition to the
typical kernel coding criteria.
And that is what I wanted to discuss.

Like: how the measured (and here there are lots of opinions) complexity
of a given code component affects its suitability for being utilized
for a functionality
that must carry safety goals.

A comment like "don't use function F, use function G" or don't implement
"function H, because function J already exists" might not be compatible
with the needs we have, to qualify the code.

Has there been any previous occurrence of this sort of constraint?
I couldn't find any.

-- 
thanks, igor
