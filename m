Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8434E2FB3
	for <ksummit@lists.linux.dev>; Fri, 25 Jun 2021 14:40:37 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id f15so10860427wro.8
        for <ksummit@lists.linux.dev>; Fri, 25 Jun 2021 07:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=G5/PkQ61oo17VQW65YibB+1Mww7ZN28vQIuLFg7TIXg=;
        b=g9lThvjrZ8F/jNYU7prEJiEmvrVQpOuZlrbEdcXCDg3Xx2/RKw7rhGqfovU+knia0H
         oaEtZVDeRdKKhPwyfFPg1dJCNLnooZH8JmG4mGAfTROTjf6PJ6AOcn0poP2i3/wBMqUY
         IfOuvnRPcH45k8ohb9ksIVQbOJYHVXduYK1G6vfrtg5u+uNjHr9n9DR9yVP53QEHZ0vX
         Tc+1sqo/gLSTvRGsdIzj9gZzcJdfLRJ0pIvQmgwYR/FTCVR0kQZd5LhVKhm30j2NZPnE
         LfV3oaV34bWSRg5Icrh09ch0bjM/yPjIFi1EKcdJF3TzcKK6NAHwOmp9MXKCyrjiG1IO
         Nc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=G5/PkQ61oo17VQW65YibB+1Mww7ZN28vQIuLFg7TIXg=;
        b=qEGHVbC5LFzcE3L41GjpBv4bJv8/L6JnvgO2xW+WZDqPytvcBcMNux0+5wqXyF+1Ii
         OIHi7tG/Hn0J7PtKlrzwoYwmu2DL5aDYu7DM2I7OvfGRT92jvyWkUHErnFzj6KhsaB+M
         YWATrRCC+F9UhEa397JOZBZSQJCb1cwYEI970cTvzv7ysgVpiojtXC5V0RftCAq5Dw2/
         K2TrOXaF0Iogte4zN61MSqQwYmyCPhD8eDyx4SC3kgCYroDIjJCZRw0rEKE4BIXbHf6q
         ujfsRBf30NLW4XoZ4jKdes+HHEVsvuoC/tRYySRsJnwAo29uK74yF3cFkZXpecrMPGm6
         j19A==
X-Gm-Message-State: AOAM532Nva819rZ78XvbBq/CZTLXNb1RKVgwEKJZFwhynxfGnQBWOrdh
	7BND8yCNCePhB2P7Opgd6RWR/6c2ZroJFpOu1TymYESIZ20=
X-Google-Smtp-Source: ABdhPJxrcxGQjKDMcyI4lLvuYDNKaGvrYmsn56zg1fpSU/1YGkZbTYO5kSdYf98+u+EzCKoho5fACnBHZvAZs0V92+0=
X-Received: by 2002:adf:f587:: with SMTP id f7mr11719491wro.253.1624632035931;
 Fri, 25 Jun 2021 07:40:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Kanchan Joshi <joshiiitr@gmail.com>
Date: Fri, 25 Jun 2021 20:10:10 +0530
Message-ID: <CA+1E3rLuU1g4HDsiHHb6sO=tDQVD3cRWxyJT=wzudaay7jtFsA@mail.gmail.com>
Subject: [TECH TOPIC] Building a fast nvme passthrough
To: ksummit@lists.linux.dev
Cc: Jens Axboe <axboe@kernel.dk>
Content-Type: text/plain; charset="UTF-8"

New storage features, especially in NVMe, are emerging fast. It
takes time and a good deal of consensus-building for a device-feature
to move up the ladders of kernel I/O stack and show-up to user-space.
This presents challenges for early technology adopters.

The passthrough interface allows such features to be usable (at least
in native way) without having to build block-generic commands,
in-kernel users, emulations and file-generic user-interfaces. That said,
even though passthrough interface cuts through layers of
abstraction and reaches to NVMe fast, it has remained tied to
synchronous ioctl interface, making it virtually useless for fast I/O path.

In this talk I will present the elements towards building a scalable
passthrough that can be readily used to play with new NVMe features.
More specifically, recent upstream efforts involving:

- Emergence of per-namespace char interface, that remains
available/usable even for unsupported features and new command-sets[1]
- Async-ioctl facility 'uring_cmd' that Jens proposed in io_uring [2].
- Async nvme-passthrough that I put up over 'uring_cmd' [3]

Performance evaluation comparing this new interface with existing ones
will be provided.
I would like to gather the feedback on the design-decisions, and discuss
how best to go about infusing more perf-centric advancements (e.g.
async polling, register-buffer etc.) into this path.

[1] https://lore.kernel.org/linux-nvme/20210421074504.57750-1-minwoo.im.dev@gmail.com/
[2] https://lore.kernel.org/linux-nvme/20210317221027.366780-1-axboe@kernel.dk/
[3] https://lore.kernel.org/linux-nvme/20210325170540.59619-1-joshi.k@samsung.com/

Thanks
-- 
Kanchan Joshi
