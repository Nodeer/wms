/******************************************************************************
 * 版权所有 刘大磊 2013-07-01												  *
 *	作者：刘大磊								                                              *
 * 电话：13336390671                                                                * 
 * email:ldlqdsd@126.com						                               *
 *****************************************************************************/

package com.delmar.sys.dao.mybatis;

import org.springframework.stereotype.Repository;

import com.delmar.sys.dao.RoleDao;
import com.delmar.sys.model.Role;
import com.delmar.core.dao.mybatis.CoreDaoMyBatis;

/**
 * @author 刘大磊 2015-01-13 09:38:52
 */
@Repository("roleDao") 
public class RoleDaoMybatis extends CoreDaoMyBatis<Role> implements RoleDao {

	/* (non-Javadoc)
	 * @see com.delmar.core.dao.mybatis.CoreDaoMyBatis#getSqlName()
	 */
	@Override
	protected String getSqlName() {
		
		return "com.delmar.sys.mybatis.sql.RoleMapper";
	}



}
