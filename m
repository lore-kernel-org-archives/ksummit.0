Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F9D3ACA4B
	for <ksummit@lists.linux.dev>; Mon,  7 Sep 2026 21:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788817367; cv=pass; b=e3kGadRjTA0ilz7J2RBZNjurKd4gRO5vaT0rXcSclsx9nD5D0Jp2wDmR0bXzqMmYnO78uGx5GT6ddYL1nFMODQieDRFgcPzyp5wu9e7PPxsvAsJG3Mv3rivlkQlSYFPDTVKLkT/0yRgQFAfy6qj39y0hlQwKEDspghwUxq91Dao=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788817367; c=relaxed/simple;
	bh=wvVogsE9106Y1yoTwSItxGk2mTSy5wXCqtN6RcQT95Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PxBabEwprtjgqcq+ZfYyX6o3BFwtxnaD0bsb+n6ENJHHBa3aKeNh0YdrAocvORwMQAoTdzHfDmQeGyzQSvGn6UILET2yMKBykwLRXzfQg55y2ElDB53dSE/i1XnuunCAZr9TJ20j/z41E/7hYUj87X4QrEVPg2rIzUl3Dq3j32M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=APGvfSGc; arc=pass smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="APGvfSGc"
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-47f96c5b722so2762311f8f.0
        for <ksummit@lists.linux.dev>; Mon, 07 Sep 2026 14:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788817364; cv=none;
        d=google.com; s=arc-20260327;
        b=plKFzyY1sGMUCTp2FWwPFSd9e27CvKLUYRk9KQZxgVZZjD808Spovuv1E28PYnqx27
         dnHqCsvvwaJHcxohktdu6Hc89UbK3ouza6VNjEszSvd7hRvSSG3K/qPII6VH+0G5/kRM
         NVhdWXfWWjjyfUXDjOMVSTQ/tLg6jpquFw2o5bEIu2ScRn6l0j7XEfWuKi8uCpRD54MW
         Jq3j8syr+5++CHTLPTzidlqirfj+mRFCbkeKswVB+VEadDqqbxyjpUSbM12md7VgMSxu
         6WoUzHZ0YpIeeFe+y9r4JcQBqVFMc10Wpip2SevDCgj/6S4XlK8W7MQqv4GUFVD/87V2
         O2CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3lfcGdW83EmK5MaKP/2txYSj9srz5cFQ4g9uTrWnKmA=;
        fh=shJsB4eIPJoPNbM/5kyB/AoB8oenWb/YFdDySMmnacI=;
        b=lwDFFbnKxwqIW8xe6hXM45cDBRX9k2JgFAQuoPfS3j6IC6NyeytSNl46HY0ENpDis4
         IR8Sct6v6g8m3CJMzgKxQHARUA9gzkXVk8CMb7mqs9YDerG69bMgkLuZhYNuXVge1XIp
         Xczmry7m+ZibQ1YY/oWvzg0RZXKghdImR8CAcfPrS3BRYSpsE/xar0tsDWpDTQLxJqyG
         wYPd/Sdak+9f723DKXGIqMKofi0Mxt4kGP7c8rpUuD0T7GWuxeEbgmlRBX5KH+S4M0l/
         cJPhkVbb/M94KLQlcxgIciVHkCMi2nutp8Yn98IOLb49cTJ757Rt7A2B78UWKhIRHN3d
         v+7Q==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788817364; x=1789422164; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3lfcGdW83EmK5MaKP/2txYSj9srz5cFQ4g9uTrWnKmA=;
        b=APGvfSGcctL1frJHYJo5KNIamzW1hP7nC+ry3aflHhvbSPuHqFU78f0Av1lFhxeWpm
         Mycp4my2bVLPRyz3At0s3YH/Q9cLz8IP+odcO5US5xN/6nryoQcvaVpVS3ZmlrpA+k9B
         2bw5viI6nmZ0EKTBZnGrRj7reqEAqvf2gFFiZzdge9Yo0H8jMTpRcIYWB/b72GAEsIdB
         TP4SFug/+eaureXv2bqVtj2Q9QFwEWwfq52cMuCb1/0nX+2/EUvoQdbgqVCN1thi9Q+9
         HmyXVEGDPQBTwAn/XtGjKqpPW9g+ndw2L1626IxhHojUVl4OkyvHqa3m76IJaaTfCXiF
         u46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788817364; x=1789422164;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=3lfcGdW83EmK5MaKP/2txYSj9srz5cFQ4g9uTrWnKmA=;
        b=NUfuJ7U6abYt49rTi+Sp0dhdwOeOo2bERrIYiMHfywEx+MkAyPv04uKDyQE1u53SIQ
         1M+wUTCFO4ng+WXjzJ8MNNMDFCrFVIL5xIhNqnHXBEZNpEzgRg0di8/K1SFKNFULc25Z
         mVbA7G0yuDGj2QtiqZ/A2pEFNf1ZaXZVsfl6p5AqjIsqTN9keME2+RrE6XC+OGyj8La7
         /bxMbilGWYnczsfVz4PM7VzTwVhXru/nxBw1tSQw5JYTv1oTEdfWM+zxFQxoBM9myQ2z
         OkysrHeF3v1XIRVO/xjdRz1PmNxoykbUwifE6ZtALoYPPFRWQfEWvUqjjCYz3qP1ZWHV
         G1Ew==
X-Gm-Message-State: AFuF++nbxZfMN2KMcum31LHT5JnbJPiUas99naG0CLp2Sszk1NpuhAIM
	swHJ4bN+uwsHkShSHkOdhtKWHFBmv5tbPtZpSqH0og4khlXA4iS7onuMXIczKduCLWEg8vFaKYn
	gYtRuu8s35+qQ6iwQtuRiO4HlogJYvQA=
X-Gm-Gg: AYBFou0bLUoNvs3a1aucYBaKlsw/ZQilMVU2mxOyBNmK1yNTnC7v0pG6flsYdSkYoeb
	veeR16s8vpOGEA/5RHOch1jRGXrD1raxE0TiHeVW7UpWO407XMC4Hh9I8p2PBPchEPK4b7zppAy
	HjPbHmjldwjLClr4flsFJvmW4YqRU3AX5CP1LFOFplFQZNV1+QDV1IL0QCAnxqZd1AS4QXlS8qE
	IuqlQ+mURD7ylYhOwMzMa18P0EpC6IgsOSXcX10b8ucFbwtafa6FDjSkbGGxIgbyNU8sPXt5mM5
	YXUBnv6zIYzBggYAXfgeAXs49wLxDqyg+oQT6ALEaqd7
X-Received: by 2002:a05:600c:350c:b0:49d:16de:9dc1 with SMTP id
 5b1f17b1804b1-49d16de9df1mr41766725e9.19.1788817364113; Mon, 07 Sep 2026
 14:42:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
In-Reply-To: <2026090747-carless-trio-ae92@gregkh>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 00:42:32 +0300
X-Gm-Features: AcwNN1Us8rvic3cjJ3bzV23hrF--XNMRU9laI_jvemhJsSc5Qi7QlSIv98hDubc
Message-ID: <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Greg KH <gregkh@linuxfoundation.org>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Sept 2026 at 23:56, Greg KH <gregkh@linuxfoundation.org> wrote:

> Why not just submit your patches like other projects do to get review
> that way?

Because:

- the effort I mentioned is about safety
AFAIK safety is not something that has attracted much interest
in the past, from upstream.
Especially when it comes to alignment with requirements from safety standards.
It seems unlikely that things would change much in the near future.
This is simply an observation of past exchanges between safety folks
and the upstream community.

- we have code that is arranged for survivability to recurring rebase,
as a fork. It's far from ideal, but it's an acknowledgement of the
previous point.
And it allows us to decouple internal schedules from
whatever time it might take for upstreaming anything.

- as I wrote, perhaps there might be a common interest in extending
the properties of the code we have, toward topics that seem to be more
resonating with upstream, like integrity and security.

- if indeed there is interest, then we can try to prioritize this rework
But we would also seek an agreement that the final shape must
still satisfy our safety-oriented needs.
After all, what would be the point of upstreaming something, if then
the end result turned out to be unusable for our main purpose?
It needs to remain compatible with its original intended use.
That is one of the points I'd like to explain.

>  If you don't have working patches, there's not much we can
> really comment on, right?

I did not propose a code review, though.
I proposed a discussion about the architectural changes supporting the
features we have implemented.

For that, knowledge of kernel architecture should suffice.
And a tad of ARM64 MMU architecture. Not much else.
I can provide the safety perspective.

We do have working patches, at least working for our own purposes.
As I wrote, the effort of massaging them into LKLM compliant shape
would not be insignificant.

With this I absolutely do not mean that we are seeking a carte blanche
for merging whatever.
Precisely because we take seriously the requirements for upstreaming,
we would like to first seek at least alignment of expectations about
both functionality of the code, and its shape.
It would not be very useful for us to prepare said patchset only for seeing
it rejected because safety needs might be considered unacceptable.

If there is a will to discuss it, and an agreement at least on intent and
expectations of the exercise can be found, then we can proceed with
the canonical rework.

In case no agreement can be found, at least we tried it.
And who knows, maybe some parts can still be acceptable, if not the entirety.

> And as you are working on this with the other ELISA people, why not work
> with them to get the changes merged upstream?  Or is this separate from
> that effort?

This is an NVIDIA effort, currently.
We are exploring the possibility of anticipating its publication, or at least of
parts of it that might be of interest for the kernel community.

Our activity in ELISA so far has been focused on describing the
problem we are trying to solve.
But ELISA's intent is not to maintain a fork of the kernel or anyhow
replace upstream.

Thus, I am asking here, where people who maintain the subsystems that would
be impacted can be found.

I can ask ELISA people to lobby for the proposal, if it helps, but in the end
what is being sought for is an architectural discussion with kernel maintainers.

-- 
igor stoppa
