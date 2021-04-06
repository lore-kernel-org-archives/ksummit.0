Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AD86D0E
	for <ksummit@lists.linux.dev>; Tue,  6 Apr 2021 14:32:20 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id t13so1188113qvs.7
        for <ksummit@lists.linux.dev>; Tue, 06 Apr 2021 07:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=MIwTsBEkSfVYQfCDkOQ45bA8fQlfecDbDQaz/q/ZxjA=;
        b=EsR0Wp4SDPif83coQuZgd/kTeFvhDXS7im0tvAgrk03i4/SAmvWMp/rC3T/3QfaNZM
         pUbuWmrvYlfET5wpMCmRJwemTnz+42BANwkoLC4N0xbgiwsMIhtkfrwkmxSRrmo3a+Hn
         HZu9kKfFUhnf/9rtVYitE/Il/wgGHsBl1lQwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=MIwTsBEkSfVYQfCDkOQ45bA8fQlfecDbDQaz/q/ZxjA=;
        b=dZ1w4OruaDKWKOdPCVSvoZDry4jqy8Noq8YgrN+4QkebDRDMvu+Obmf15bEvW9he1H
         bUuSk0ZkvgKNt/7VtnXq2y95DQQCCmkZI78j0ZFyB//1wtbfKWUr9hkzzOBrqZeBvlhp
         +If/TcGcibO5moOaspbBqDVY2ImRMsC5JzR1aY6kLWDf+TZet4nI0/P+MJ/FNSNxJ9fn
         7rZMebacc6GoBO3LKgrQbQ/KyEfPJ+ApPrvT/ZhVJRLtkeCDBX1+PbKz8qnQYS8LScX9
         63K7Ivmu5E3+MN9hjiyzRVhcKUDY4cCReAEz2He9Cnrw8fZi15beSN4TCNokHnLxBOTA
         JHeQ==
X-Gm-Message-State: AOAM533LTFDgBqFeavRNxJ4Ha2GoM3/pTIE9BL/mg6sApEr1ovkDLOc9
	x7SDJxaV8aUfSPwdpUfSEMnjWYfQ5fG0Nt8Gu9I=
X-Google-Smtp-Source: ABdhPJxnuzH7jEUbUlLsDf84xx9kZOf//WYKt/+jIK9GTkKaTQoqZNdtom27/rJGSxKpn1bxB+QSog==
X-Received: by 2002:a0c:df0a:: with SMTP id g10mr28891437qvl.57.1617719539017;
        Tue, 06 Apr 2021 07:32:19 -0700 (PDT)
Received: from nitro.local ([89.36.78.230])
        by smtp.gmail.com with ESMTPSA id d2sm13982135qte.84.2021.04.06.07.32.18
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 07:32:18 -0700 (PDT)
Date: Tue, 6 Apr 2021 10:32:17 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: ksummit@lists.linux.dev
Subject: Test delivery to new list
Message-ID: <20210406143217.hyh3rupk5jyj4uum@nitro.local>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Testing, ignore.

-K
