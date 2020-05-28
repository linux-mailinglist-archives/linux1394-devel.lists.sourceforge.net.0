Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4F91E64BE
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 May 2020 16:53:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jeJuj-00050i-4N; Thu, 28 May 2020 14:53:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bart.vanassche@gmail.com>) id 1jeJuh-00050U-JD
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 14:53:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cfzDVeenpvj+BZqV0/UhApIa8t7msOrP7Mg4fGDJbms=; b=RUrUr46D4GgCIitFYitp5pYUm+
 UFV3UF9yfY2NHsOflzrc3bHk+4F6Ab8qk293pToDrYi1MlY8ce067XY4/kPmQPSjoaD0SsxGeDOq9
 E5OsLCalIxL5cAIiP3mSk7q9xYimHOh385DyQTrLfUIee9I1LRDt+oYr11OHl7YPypU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cfzDVeenpvj+BZqV0/UhApIa8t7msOrP7Mg4fGDJbms=; b=FNnZX8j1xVGhK3GwacXZF8lO7N
 zNgfZGDwuWWnIR/443E2GG8koZxmbEzk6oUXYs/rSDBCu3yDFp2ucOcseYu03Zp6TOmgWJ65tcSY5
 5MJUoTfCYs6tknemdbOVh+K/3b7dChPGiVonchxTpBy02W2iyC+bSNyHQjLKeXlU+Eh0=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jeJug-001cHK-DO
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 14:53:43 +0000
Received: by mail-pg1-f193.google.com with SMTP id w20so8546961pga.6
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 28 May 2020 07:53:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cfzDVeenpvj+BZqV0/UhApIa8t7msOrP7Mg4fGDJbms=;
 b=juApoEhScQPteMkUrNulfYTxueNJqu9SSf1Ggc7LxIiQGRd5hlreraCnvN1CYiMant
 2Q31Nk9/dgQzAn4Oaz0VY4bfN/t8F/RJj/nQbulOW83NzzRNKKiMnuwZjjFj5uwSpvfC
 4/IHxFDtUazTX3+WmyPG3iUy1AwjzCFuKtiKd5I6i35qYhFHLM0Dd5HUnfW+Ssu5ORlM
 F0P1Oc6zq/tTbdpL36KBXN8JKhqAyb86pSFy/Q5RvaXZDYGlx8tJLGDYLk8H56a9BgFl
 1tZze/jkTrvPKJpEOnfUck2JOYzmgNiuYHAVcd8Oq79UDT+VJWV5Z8UhbCHJUHvievCd
 GSoQ==
X-Gm-Message-State: AOAM53315FCEA7fJPoK0x2MP9Fqxae1DILZ8+DK9eQKavomsWOuc+dhS
 cV8RPSitpB7xdEXXR0JMMjA=
X-Google-Smtp-Source: ABdhPJyww5SkYlCpB6JqMj2ap2uap5OXF3S8N+mAl26zik/nUI7r5eyXEVIv/1IC8TYkgg7xy4bQBg==
X-Received: by 2002:a63:40a:: with SMTP id 10mr3383814pge.310.1590677616663;
 Thu, 28 May 2020 07:53:36 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:40e6:aa88:9c03:e0b4?
 ([2601:647:4000:d7:40e6:aa88:9c03:e0b4])
 by smtp.gmail.com with ESMTPSA id k92sm5799676pjh.2.2020.05.28.07.53.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 07:53:35 -0700 (PDT)
Subject: Re: [PATCH] sbp-target: add the missed kfree() in an error path
To: Chris Boot <bootc@bootc.net>
References: <20200528102056.911825-1-hslester96@gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <475e4f50-6d20-d653-8288-0676bc708bcc@acm.org>
Date: Thu, 28 May 2020 07:53:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200528102056.911825-1-hslester96@gmail.com>
Content-Language: en-US
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jeJug-001cHK-DO
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Nicholas Bellinger <nab@linux-iscsi.org>, target-devel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2020-05-28 03:20, Chuhong Yuan wrote:
> sbp_fetch_command() forgets to call kfree() in an error path.
> Add the missed call to fix it.

Hi Chris,

The changelog of the code under drivers/target/sbp makes we wonder
whether this driver has ever had any other users than its original
author. Do you agree with this? If so, do you want to keep this driver
in the kernel tree?

Thanks,

Bart.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
